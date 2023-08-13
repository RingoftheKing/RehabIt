import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fill7 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.blue400,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.blue400.withOpacity(0.09),
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.blue500,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.orangeA700.withOpacity(0.1),
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.blue400,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65,
    ),
  );

  static BorderRadius roundedBorder43 = BorderRadius.circular(
    getHorizontalSize(
      43,
    ),
  );

  static BorderRadius customBorderTL43 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        43,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        43,
      ),
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtRoundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius circleBorder37 = BorderRadius.circular(
    getHorizontalSize(
      37,
    ),
  );

  static BorderRadius roundedBorder90 = BorderRadius.circular(
    getHorizontalSize(
      90,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
