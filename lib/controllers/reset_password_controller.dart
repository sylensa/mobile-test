import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/user_data_source.dart';
import 'package:netafim_mobile/models/requests/reset_password_payload.dart';
import 'package:netafim_mobile/network/dio_provider.dart';
import 'package:netafim_mobile/states/submit_state.dart';

final resetPasswordNotifierProvider =
    StateNotifierProvider.autoDispose<ResetPasswordController, SubmitState>(
        (ref) => ResetPasswordController());

class ResetPasswordController extends StateNotifier<SubmitState> {
  ResetPasswordController() : super(SubmitState.initial());

  sendResetPassword(String userId) async {
    try {
      state = SubmitState.loading();
      await UserDataSource(dio)
          .sendResetPassword(ResetPasswordPayload(UserId: userId));
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to send reset password');
    }
  }
}
