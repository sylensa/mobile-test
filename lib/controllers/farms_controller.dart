import 'dart:developer';

import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/farms_data_source.dart';
import 'package:netafim_mobile/models/country.dart';
import 'package:netafim_mobile/models/requests/update_farm_playload.dart';
import 'package:netafim_mobile/models/timezone.dart';

import '../data_sources/lookup_data_source.dart';
import '../models/farms_response.dart';
import '../models/state_district.dart';
import '../network/dio_provider.dart';
import '../states/submit_state.dart';
import 'login_controller.dart';

final farmsProvider = FutureProvider.autoDispose<List<Farm>>((ref) async {
  ref.watch(userPrefsProvider);
  final userInfo = await ref.watch(getUserInfoProvider.future);
  if (userInfo == null) return [];
  final userId = userInfo.sub;
  final farmsResponse = await FarmsDataSource(dio).getFarms(userId);

  final farms = [...farmsResponse.farms];
  farms.sort((a, b) => a.farmName.trim().compareTo(b.farmName.trim()));
  return farms;
});

final selectedFarmIdProvider =
    StateProvider.autoDispose<String?>((ref) => null);

final selectedFarmProvider = Provider.autoDispose<Farm?>((ref) {
  final selectedId = ref.watch(selectedFarmIdProvider);
  final farms = ref.watch(farmsProvider);
  return farms.whenOrNull(data: (farms) {
    if (selectedId == null) return farms.first;
    return farms.firstWhereOrNull((farm) => farm.farmId == selectedId);
  });
});

// final selectedFarmIdProvider = StateProvider.autoDispose<String?>((ref) {
//   final farms = ref.watch(farmsProvider);
//   final updatedFarmId = ref.watch(updatedFarmIdProvider);
//   if(updatedFarmId != null) return updatedFarmId;
//   return farms.when(
//       data: (farms) => farms.first.farmId,
//       loading: () => null,
//       error: (error, stackTrace) => null);
// });

final countriesProvider =
    FutureProvider.autoDispose<List<Country>>((ref) async {
  final result = await LookUpDataSource(dio).getCountries();
  ref.keepAlive();
  return result;
});

final selectedCountryProvider = StateProvider.autoDispose<Country?>((ref) {
  final selectedFarm = ref.watch(selectedFarmProvider);
  if (selectedFarm == null) return null;
  return Country(
      name: selectedFarm.country!, isoSymbol: selectedFarm.countryCode!);
});

final statesDistrictsProvider = FutureProvider.autoDispose
    .family<List<StateDistrict>, String?>((ref, countryCode) async {
  // final selectedCountry = ref.watch(selectedCountryProvider);
  if (countryCode == null) throw 'Please select a country';
  final result = await LookUpDataSource(dio).getStates(countryCode);
  ref.keepAlive();
  if (result.isEmpty) throw 'No states found for this country';
  return result;
});

final selectedStateDistrictProvider = StateProvider.autoDispose
    .family<StateDistrict?, String?>((ref, countryCode) {
  final selectedFarm = ref.watch(selectedFarmProvider);
  if (selectedFarm == null ||
      countryCode == null ||
      selectedFarm.countryCode != countryCode) return null;
  final selected = StateDistrict(
      stateIsoCode: selectedFarm.countrySubdivisionCode!,
      name: selectedFarm.state!);
  ref.keepAlive();
  return selected;
});

final timezonesProvider =
    FutureProvider.autoDispose<List<Timezone>>((ref) async {
  final result = await LookUpDataSource(dio).getTimezones();
  ref.keepAlive();
  return result;
});

final selectedTimezoneProvider = StateProvider.autoDispose<Timezone?>((ref) {
  final selectedFarm = ref.watch(selectedFarmProvider);
  if (selectedFarm == null) return null;
  return Timezone(
      displayName: selectedFarm.timeZoneInfo!.windowsTimeZone!,
      ianaId: selectedFarm.timeZoneInfo!.timezoneId!);
});

final firstDayProvider = StateProvider.autoDispose<String>((ref) {
  final selectedFarm = ref.watch(selectedFarmProvider);
  if (selectedFarm == null) return 'Sunday';
  return selectedFarm.firstDayOfWeek!;
});

class UpdateFarmNotifier extends StateNotifier<SubmitState> {
  UpdateFarmNotifier(this._farmId, {required this.ref})
      : super(SubmitState.initial());
  final String _farmId;
  final ref;

  updateFarm(UpdateFarmPayload payload) async {
    try {
      ref.read(selectedFarmIdProvider.notifier).state = _farmId;
      state = SubmitState.loading();
      await FarmsDataSource(dio).updateFarm(farmId: _farmId, payload: payload);
      state = SubmitState.success();
      ref.refresh(farmsProvider);
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to update the farm');
    }
  }
}

final updateFarmProvider =
    StateNotifierProvider.autoDispose<UpdateFarmNotifier, SubmitState>((ref) {
  final farm = ref.watch(selectedFarmProvider);
  return UpdateFarmNotifier(farm!.farmId, ref: ref);
});
