import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/cultures_data_source.dart';

import '../data_sources/shared_prefs.dart';
import '../models/culture.dart';
import '../network/dio_provider.dart';

const String culturesAppId = 'GsMobileApp';

final getCulturesProvider =
    FutureProvider.autoDispose<List<Culture>>((ref) async {
  final response = await CulturesDataSource(dio).getCultures(culturesAppId);
  return response.cultures;
});

final culturesProvider = Provider.autoDispose<List<Culture>>((ref) {
  return ref.watch(getCulturesProvider).maybeWhen(
        data: (data) => data,
        error: (error, stackTrace) {
          print(error);
          return [];
        },
        orElse: () => [],
      );
});

final supportedLocalesProvider = Provider.autoDispose<List<Locale>>((ref) {
  final localCultures = SharedPrefs.cultures;
  if (localCultures.isNotEmpty) {
    return localCultures.map((e) => Locale(e.culture)).toList();
  }
  final remoteCultures = ref.watch(culturesProvider);
  if (remoteCultures.isEmpty) return const [Locale('en')];
  SharedPrefs.saveCultures(remoteCultures);
  return remoteCultures.map((e) => Locale(e.culture)).toList();
});

final currentLocaleProvider = StateProvider.autoDispose<Locale>((ref) {
  return ref.watch(userPrefsProvider).maybeWhen(
    data: (userPrefs) {
      return Locale(userPrefs?.culture ?? 'en');
    },
    orElse: () {
      return Locale(SharedPrefs.selectedCulture?.culture ?? 'en');
    },
  );
});

class TextResourcesController {
  static Future<Map<String, dynamic>> get textResources async {
    if (SharedPrefs.textResources.isNotEmpty) {
      _remoteTextResources
          .then((value) => SharedPrefs.saveTextResources(value));
      return SharedPrefs.textResources;
    }

    final resources = await _remoteTextResources;
    SharedPrefs.saveTextResources(resources);
    return resources;
  }

  static Future<Map<String, Map<String, dynamic>>>
      get _remoteTextResources async {
    final response =
        await CulturesDataSource(dio).getTextResources(culturesAppId);
    return response.groupedResources;
  }
}
