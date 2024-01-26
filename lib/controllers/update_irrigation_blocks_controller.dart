import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/models/requests/irrigation_block_payload.dart';

import '../data_sources/farms_data_source.dart';
import '../network/dio_provider.dart';
import '../states/submit_state.dart';

final updateIrrigationBlockNotifierProvider = StateNotifierProvider.autoDispose<
    UpdateIrrigationBlockController, SubmitState>((ref) {
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final timeZone =
      ref.watch(selectedFarmProvider)!.timeZoneInfo!.windowsTimeZone;
  return UpdateIrrigationBlockController(
      unitSystem: unitSystem, timeZone: timeZone);
});

class UpdateIrrigationBlockController extends StateNotifier<SubmitState> {
  UpdateIrrigationBlockController(
      {required this.unitSystem, required this.timeZone})
      : super(SubmitState.initial());
  final String unitSystem;
  final String? timeZone;

  void updateIrrigationBlock(
      {required String irrigationBlockId,
      required IrrigationBlockPayload payload}) async {
    try {
      state = SubmitState.loading();
      await FarmsDataSource(dio).updateIrrigationBlock(
          irrigationBlockId: irrigationBlockId,
          systemUnit: unitSystem,
          timezone: timeZone ?? 'Israel Standard Time',
          payload: payload);
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to update the block');
    }
  }
}
