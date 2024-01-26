import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/login_controller.dart';
import 'package:netafim_mobile/controllers/user_settings_controller.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/data_sources/user_data_source.dart';
import 'package:netafim_mobile/models/user_prefs.dart';

import '../models/user_info.dart';
import '../network/dio_provider.dart';

final getUserInfoProvider = FutureProvider.autoDispose<UserInfo?>((ref) async {
  final isLoggedIn = ref.watch(isLoggedInProvider);
  if (!isLoggedIn) return null;
  final cachedUser = SharedPrefs.user;
  if (cachedUser != null) return cachedUser;
  final user = await UserDataSource(dio).getUser();
  SharedPrefs.saveUser(user);
  return user;
});

final userInfoProvider = Provider.autoDispose<UserInfo?>((ref) {
  return ref
      .watch(getUserInfoProvider)
      .whenOrNull(data: (userInfo) => userInfo);
});

final userPrefsProvider = FutureProvider.autoDispose<UserPrefs?>((ref) async {
  ref.watch(systemUpdatedProvider);
  final userInfo = await ref.watch(getUserInfoProvider.future);
  if (userInfo == null) return null;
  final userId = userInfo.sub;
  final response = await UserDataSource(dio).getUserPrefs(userId);
  return response;
});

final farmUnitSystemProvider = Provider.autoDispose<String>(
    (ref) => ref.watch(userPrefsProvider).maybeWhen(
          data: (data) => data?.unitsSystem ?? 'SI',
          orElse: () => 'SI',
        ));
