import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blue400.withOpacity(0.09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.blue400,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: appTheme.orangeA700,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'Arimo',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.38),
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: appTheme.blue400,
          fontSize: getFontSize(
            50,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.24),
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.blue400,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900.withOpacity(0.55),
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Arimo',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.5),
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Arimo Hebrew Subset',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900.withOpacity(0.55),
          fontSize: getFontSize(
            38,
          ),
          fontFamily: 'Arimo',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);
  // Blue
  Color get blue400 => Color(0XFF379FFF);
  Color get blue500 => Color(0XFF2897FF);
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD7DADB);
  Color get blueGray400 => Color(0XFF888888);
  // Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray200 => Color(0XFFE7E7E7);
  Color get gray300 => Color(0XFFE3E3E7);
  // Orange
  Color get orange50 => Color(0XFFFFEDE0);
  Color get orangeA700 => Color(0XFFFF6600);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  // Yellow
  Color get yellow700 => Color(0XFFF1C93B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();