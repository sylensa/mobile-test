import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/alarms_data_source.dart';

import '../models/alarm.dart';
import '../network/dio_provider.dart';
import 'farms_controller.dart';

final alarmsProvider = FutureProvider.autoDispose<List<Alarm>>((ref) async {
  final farm = ref.watch(selectedFarmProvider);
  if (farm == null) {
    throw 'No farm selected';
  }
  final response = await AlarmsDataSource(dio).getAlarms(farmId: farm.farmId);
  final filteredList =
      response.value.where((element) => element.isActive).toList();
  return filteredList;
});

final alarmsNotifierProvider =
    StateNotifierProvider.autoDispose<AlarmsNotifier, AsyncValue<List<Alarm>>>(
        (ref) {
  final alarms = ref.watch(alarmsProvider);
  final farmId = ref.watch(selectedFarmProvider)?.farmId;
  if (farmId == null) {
    return AlarmsNotifier(const AsyncValue.loading(), null);
  }
  return AlarmsNotifier(alarms, farmId);
});

class AlarmsNotifier extends StateNotifier<AsyncValue<List<Alarm>>> {
  AlarmsNotifier(super._state, this._farmId);

  final String? _farmId;

  dismissAlarm(String id) {
    try {
      _requestDismiss({id});
    } on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  dismissAllAlarms() {
    try {
      _requestDismiss(state.value!.map((e) => e.id).toSet());
    } on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  _requestDismiss(Set<String> ids) async {
    final response = await AlarmsDataSource(dio)
        .dismissAlarms(farmId: _farmId ?? '', ids: ids.toList());
    if (response.response.data['isDismissed'] == true) {
      state = AsyncValue.data([
        for (final alarm in state.value!)
          if (!ids.contains(alarm.id)) alarm
      ]);
    } else {
      throw 'Failed to dismiss alarms';
    }
  }
}

final alarmsCountProvider = Provider.autoDispose<int>((ref) => ref
    .watch(alarmsNotifierProvider)
    .maybeWhen(data: (alarms) => alarms.length, orElse: () => 0));
