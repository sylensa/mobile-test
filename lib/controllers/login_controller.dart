import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/auth_data_source.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/states/login_state.dart';

import '../network/dio_provider.dart';

final loginControllerProvider =
    StateNotifierProvider.autoDispose<LoginController, LoginState>(
        (ref) => LoginController(LoginState.initial()));

class LoginController extends StateNotifier<LoginState> {
  LoginController(super.state);

  togglePasswordVisibility() =>
      state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);

  tryLogin(String userName, String password) async {
    state = state.copyWith(loading: true, error: null);
    try {
      final response = await AuthDataSource(dio)
          .authenticate('Basic $authSecret', 'password', userName, password);

      await SharedPrefs.saveAuth(response);

      state = const LoginState(loading: false, success: true);
    } on DioError catch (e) {
        state = state.copyWith(loading: false, error: 'Username or password is incorrect');
    } catch (e) {
      state = state.copyWith(loading: false, error: 'Failed to login');
    }
  }
}

final isLoggedInProvider = StateProvider<bool>((ref) {
  return SharedPrefs.isLoggedIn;
});
