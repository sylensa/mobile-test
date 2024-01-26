import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/firebase_options.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/themes.dart';
import 'package:netafim_mobile/utils/app_localization_delegate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'controllers/cultures_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPrefs.prefs = await SharedPreferences.getInstance();

  //----------------- SignalR -----------------
  //  final hubConnection = HubConnectionBuilder()
  //     .withUrl('https://netafim-mobile.azurewebsites.net/notifications')
  //     .build();
  // await hubConnection.start();
//----------------- SignalR -----------------

  runApp(const ProviderScope(child: MyApp()));
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      locale: ref.watch(currentLocaleProvider),
      localizationsDelegates: [
        AppLocalizationsDelegate.instance,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: ref.watch(supportedLocalesProvider),
    );
  }
}

final container = ProviderContainer();