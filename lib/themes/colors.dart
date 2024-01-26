import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF0973E7);
const Color snackBarColor = Color(0xFF2C303A);
const Color lightBlueColor = Color(0xFFF5F5F5);
const Color primaryFadeColor = Color(0xFFF4F7FB);
const Color textFieldBorderColor = Color(0xFFD9D9D9);
const Color outlinedButtonBorderColor = Color(0xFFD9D9D9);
const Color scaffoldBackgroundColor = Color(0xFFF6F8FC);
const Color textFieldFilledBorderColor = Color(0xFFCED3D9);
const Color darkBlueTextColor = Color(0xFF00457C);
const Color blueTextColor = Color(0xFF0973E7);
final Color textColorBody = const Color(0xFF000000).withOpacity(0.7);

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;

  /// if [500] is the default color, there are at LEAST five
  /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
  /// divisor of 5 would mean [50] is a lightness of 1.0 or
  /// a color of #ffffff. A value of six would be near white
  /// but not quite.
  const lowDivisor = 6;

  /// if [500] is the default color, there are at LEAST four
  /// steps above [500]. A divisor of 4 would mean [900] is
  /// a lightness of 0.0 or color of #000000
  const highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}
