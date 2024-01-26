import 'package:flutter/material.dart';

class AppLocalizations {
  final Map<String, dynamic> localizedValues;

  AppLocalizations(this.localizedValues);

  String getString(String key, Locale locale) {
    return localizedValues[key]?[locale.languageCode] ?? localizedValues[key]?['en'] ?? '';
  }
}

extension AppLocalizationsBuildContextExtension on BuildContext {
  AppLocalizations get _localizations => Localizations.of<AppLocalizations>(this, AppLocalizations)!;

  String tr(String key) => _localizations.getString(key, Localizations.localeOf(this));
}

extension AppLocalizationsStringExtension on String {
  tr(BuildContext context, [Map<String, dynamic>? values]) {
    String translated = context.tr(this);
    if (values != null) {
      values.forEach((key, value) {
        translated = translated.replaceAll("{$key}", value.toString());
      });
    }
    return translated;
  }
}

extension AppLocalizationsTextWidgetExtension on Text {
  Text tr(BuildContext context, {Key? key}) => Text(
        data!.tr(context),
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
        strutStyle: strutStyle,
        key: key,
      );
}
