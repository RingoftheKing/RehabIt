import 'dart:ui';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue400 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue400.withOpacity(0.09),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      );
  static ButtonStyle get fillBlue400TL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue400.withOpacity(0.09),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
