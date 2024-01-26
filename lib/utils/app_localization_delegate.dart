import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netafim_mobile/controllers/cultures_controller.dart';

import 'app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  static final AppLocalizationsDelegate _instance = AppLocalizationsDelegate();

  static AppLocalizationsDelegate get instance => _instance;

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final Map<String, dynamic> localizedValues =
        await TextResourcesController.textResources;

    return SynchronousFuture(AppLocalizations(localizedValues));
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
