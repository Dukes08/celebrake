import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFF000000);

  ThemeData theme() {
    final base = ThemeData(
      useMaterial3: true,
      fontFamily: 'SFProDisplay',
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        surface: backgroundColor,
        onPrimary: Colors.white,
      ),
    );

    return base.copyWith(
      textTheme: TextTheme(),
      cupertinoOverrideTheme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(textStyle: TextStyle(fontFamily: '')),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
      ),
    );
  }
}
