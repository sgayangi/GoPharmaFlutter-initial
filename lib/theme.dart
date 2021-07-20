import 'package:flutter/material.dart';

/* Theme data for the app and color scheme to be used */
ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'SF-Pro',
    brightness: Brightness.light,
    primaryColor: Colors.red,
    accentColor: Colors.red,
    primarySwatch: Colors.red,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );
}
