import 'dart:ui';

import 'package:flutter/material.dart';

enum StatusColor {
  red(Colors.red),
  blue(Colors.blue),
  green(Colors.green),
  orange(Colors.orange),
  white(Colors.white),
  transparent(Colors.transparent);

  final Color color;

  const StatusColor(this.color);
}
