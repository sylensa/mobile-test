import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/graph.dart';
import 'package:netafim_mobile/pages/confirm_password.dart';
import 'package:netafim_mobile/pages/confirmation_page.dart';
import 'package:netafim_mobile/pages/farm_management_page.dart';
import 'package:netafim_mobile/pages/force_update_page.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/pages/irrigation_blocks_page.dart';
import 'package:netafim_mobile/pages/load_webview.dart';
import 'package:netafim_mobile/pages/login_page.dart';
import 'package:netafim_mobile/pages/reset_password.dart';
import 'package:netafim_mobile/pages/user_settings_page.dart';
import 'package:netafim_mobile/pages/work_space_page.dart';
import 'package:netafim_mobile/states/viewable_device.dart';
import 'package:netafim_mobile/widgets/device_list.dart';
import 'package:netafim_mobile/widgets/view_device_details.dart';

import 'app_remote_config.dart';
import 'controllers/login_controller.dart';
import 'main.dart';
import 'network/request_interceptor.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final mustUpdate = ref.watch(mustUpdateAppProvider);
  container.listen(isAuthorizedProvider, (previous, next) {
    if (!next) {
      ref.read(isLoggedInProvider.notifier).state = next;
    }
  });
  final isLoggedIn = ref.watch(isLoggedInProvider);
  return GoRouter(
    initialLocation: "/",
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
          builder: (context, state, child) {
            return HomePage(childPage: child);
          },
          routes: [
            GoRoute(
              path: "/",
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: WorkSpacePage()),
              redirect: (context, state) {
                if (mustUpdate) {
                  return Routing.forceUpdatePage;
                }
                final isGoingToLogin = state.subloc == Routing.loginPage;
                if (!isLoggedIn && !isGoingToLogin) {
                  return Routing.loginPage;
                }
                return null;
              },
            ),
            GoRoute(
              path: "/listDevice",
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: DevicesTreeView()),
            ),
            GoRoute(
              path: "/viewDeviceDetails/:deviceId",
              pageBuilder: (context, state) => NoTransitionPage(
                  child: ViewDeviceDevices(
                viewableDevice: state.extra as ViewableDevice,
              )),
            ),
            GoRoute(
              path: "/userSettings",
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: UserSettingsPage()),
            ),
            GoRoute(
              path: "/irrigationBlock",
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: IrrigationBlocksPage()),
            ),
            GoRoute(
              path: "/farmManagement",
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: FarmManagementPage()),
            ),
            GoRoute(
              path: "/loadWebView",
              pageBuilder: (context, state) =>
                   NoTransitionPage(child: LoadWebView(extras: state.extra as Map,)),
            ),

          ]
      ),
      GoRoute(
        path: Routing.loginPage,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: "resetPassword",
            builder: (context, state) => const ResetPassword(),
          ),

        ],
      ),
      GoRoute(
        path: Routing.confirmPassword,
        builder: (context, state) => const ConfirmPassword(),
      ),
      GoRoute(
        path: Routing.confirmationPage,
        builder: (context, state) => const ConfirmationPage(),
      ),
      GoRoute(
          path: Routing.forceUpdatePage,
          builder: (context, state) => const ForceUpdatePage()),
    ],
  );
});

class Routing {
  static const String homePage = '/';
  static const String loginPage = '/loginPage';
  static const String listDevicePage = '/listDevice';
  static const String viewDeviceDetails = '/viewDeviceDetails';
  static const String irrigationBlock = '/irrigationBlock';
  static const String farmManagement = '/farmManagement';
  static const String phoneVerificationPage = '/loginPage/resetPassword';
  static const String forceUpdatePage = '/forceUpdate';
  static const String confirmPassword = '/confirmPassword';
  static const String confirmationPage = '/confirmationPage';
  static const String userSettings = '/userSettings';
  static const String loadWebView = '/loadWebView';
}
