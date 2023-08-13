import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          24,
        ),
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          24,
        ),
      );
  static get headlineLargeArimoBlack90030 =>
      theme.textTheme.headlineLarge!.arimo.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          30,
        ),
      );
  static get headlineLargeArimoBlack900 =>
      theme.textTheme.headlineLarge!.arimo.copyWith(
        color: appTheme.black900,
      );
  static get headlineMedium29 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: getFontSize(
          29,
        ),
      );
  // Body text style
  static get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          17,
        ),
      );
  // Title text style
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlue400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue400,
        fontSize: getFontSize(
          14,
        ),
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.24),
      );
  static get titleLargeOrangeA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orangeA700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumArimoBlack900 =>
      theme.textTheme.titleMedium!.arimo.copyWith(
        color: appTheme.black900.withOpacity(0.55),
        fontSize: getFontSize(
          19,
        ),
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          17,
        ),
      );
  static get titleMediumBlue400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
      );
  // Display text style
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          35,
        ),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get arimoHebrewSubset {
    return copyWith(
      fontFamily: 'Arimo Hebrew Subset',
    );
  }

  TextStyle get arimo {
    return copyWith(
      fontFamily: 'Arimo',
    );
  }
}
