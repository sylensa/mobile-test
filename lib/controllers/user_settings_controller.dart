import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/models/requests/change_password_payload.dart';
import 'package:netafim_mobile/models/requests/update_account_payload.dart';

import '../data_sources/user_data_source.dart';
import '../models/requests/update_system_payload.dart';
import '../network/dio_provider.dart';
import '../states/submit_state.dart';

class UserSettingsController extends StateNotifier<SubmitState> {
  UserSettingsController(this._userId) : super(SubmitState.initial());
  final String _userId;

  updateAccount(UpdateAccountPayload payload) async {
    try {
      state = SubmitState.loading();
      await UserDataSource(dio)
          .updateAccount(userId: _userId, payload: payload);
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to update account');
    }
  }

  updateSystem(UpdateSystemPayload payload) async {
    try {
      state = SubmitState.loading();
      await UserDataSource(dio).updateSystem(userId: _userId, payload: payload);
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to update system');
    }
  }

  changePassword(ChangePasswordPayload payload) async {
    try {
      state = SubmitState.loading();
      await UserDataSource(dio)
          .changePassword(userId: _userId, payload: payload);
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to change password');
    }
  }
}

final updateAccountProvider =
    StateNotifierProvider.autoDispose<UserSettingsController, SubmitState>(
        (ref) {
  final userId = ref.watch(userInfoProvider)!.sub;
  return UserSettingsController(userId);
});

final updateSystemProvider =
    StateNotifierProvider.autoDispose<UserSettingsController, SubmitState>(
        (ref) {
  final userId = ref.watch(userInfoProvider)?.sub??'';
  return UserSettingsController(userId);
});

final changePasswordProvider =
    StateNotifierProvider.autoDispose<UserSettingsController, SubmitState>(
        (ref) {
  final userId = ref.watch(userInfoProvider)!.sub;
  return UserSettingsController(userId);
});

final systemUpdatedProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(updateSystemProvider.select((value) => value.success == true));
});