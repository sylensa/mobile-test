import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/irrigation_manager_data_source.dart';
import 'package:netafim_mobile/models/irrigation_program.dart';
import 'package:netafim_mobile/models/requests/set_program_payload.dart';
import 'package:netafim_mobile/states/submit_state.dart';

import '../models/requests/change_program_state_payload.dart';
import '../network/dio_provider.dart';
import 'crop_unit_modal_controller.dart';
import 'crop_units_controller.dart';

class UpdateIrrigationProgramNotifier extends StateNotifier<SubmitState> {
  UpdateIrrigationProgramNotifier() : super(SubmitState.initial());

   updateProgram(SetProgramPayload payload) async {
    try {
      state = SubmitState.loading();
      await IrrigationMangerDataSource(dio).setProgram(payload);
      state = SubmitState.success();
    } catch (e) {
      state = SubmitState.error('Failed to update irrigation program');
    }
  }
}

final updateIrrigationProgramProvider = StateNotifierProvider.autoDispose<
    UpdateIrrigationProgramNotifier,
    SubmitState>((ref) => UpdateIrrigationProgramNotifier());

///-----------------------------------------------------------------------------
class ChangeProgramState extends StateNotifier<SubmitState> {
  ChangeProgramState(this.program) : super(SubmitState.initial());
  final IrrigationProgram? program;

  _changeProgramState(ChangeProgramStatePayload payload) async {
    try {
      state = SubmitState.loading();
      await IrrigationMangerDataSource(dio).changeProgramState(payload);
      state = SubmitState.success();
    } on DioError catch (e) {
      final isMap = e.response?.data is Map;
      String? message;
      if (isMap) {
        message =
            e.response?.data['message'] ?? 'Failed to change program state';
        state = SubmitState.error(message!);
      } else {
        state = SubmitState.error('Failed to change program state');
      }
    } catch (e) {
      state = SubmitState.error('Failed to change program state');
    }
  }

  ChangeProgramStatePayload _programPayload({int? state, int? skipShiftWidId}) {
    return ChangeProgramStatePayload(
        cropUnitId: program?.cropUnitId ?? '',
        programId: program?.irrigationProgramId ?? '',
        deviceUuid: program?.deviceUuid ?? '',
        state: state,
        skipShiftWithId: skipShiftWidId);
  }

  start() {
    final payload = _programPayload(state: 0);
    _changeProgramState(payload);
  }

  stop() {
    final payload = _programPayload(state: 1);
    _changeProgramState(payload);
  }

  skip() {
    final payload = _programPayload(state: 1);
    _changeProgramState(payload);
  }

  resume() {
    final payload = _programPayload(state: 2);
    _changeProgramState(payload);
  }

  pause() {
    final payload = _programPayload(state: 3);
    _changeProgramState(payload);
  }

  skipShift() {
    final payload = _programPayload(state: 4, skipShiftWidId: 1);
    _changeProgramState(payload);
  }

  clearState() {
    state = SubmitState.initial();
  }
}

final changeProgramStateProvider =
    StateNotifierProvider.autoDispose<ChangeProgramState, SubmitState>((ref) {
  final cropUnitId = ref.watch(openedCropUnitIdProvider);
  final cropUnits = ref.watch(cropUnitsMapProvider);
  final cropUnit = cropUnits[cropUnitId];
  return ChangeProgramState(cropUnit?.irrigationProgram);
});
