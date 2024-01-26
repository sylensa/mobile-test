import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppRemoteConfig {
  static const mustUpdateKey = 'must_update';

  static Future setup() async {
    final config = FirebaseRemoteConfig.instance;
    await config.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval:
          kDebugMode ? const Duration(seconds: 10) : const Duration(hours: 12),
    ));
    await setDefaults();
    await config.fetch();
    await config.activate();
  }

  static Future setDefaults() async {
    await FirebaseRemoteConfig.instance.setDefaults(await _getDefaultData());
  }

  static _getDefaultData() async {
    final String response =
        await rootBundle.loadString('assets/data/remote_config_defaults.json');
    return await jsonDecode(response);
  }
}

final remoteConfigInitProvider = FutureProvider<void>((ref) async {
  return await AppRemoteConfig.setup();
});

final mustUpdateAppProvider = Provider<bool>((ref) {
  ref.watch(remoteConfigInitProvider);
  final mustUpdate =
      FirebaseRemoteConfig.instance.getBool(AppRemoteConfig.mustUpdateKey);
  return mustUpdate;
});
