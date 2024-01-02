import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineGray800 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillLightgreen50 => BoxDecoration(
        color: ColorConstant.lightGreen50,
      );
  static BoxDecoration get fillGray30001 => BoxDecoration(
        color: ColorConstant.gray30001,
      );
  static BoxDecoration get outlineGray500 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.5,
          ),
          end: Alignment(
            0.5,
            1.09,
          ),
          colors: [
            ColorConstant.gray300,
            ColorConstant.gray600,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray900,
      );
  static BoxDecoration get outlineGray70001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray70001,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get txtGradientGray80001Gray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.52,
            -0.4,
          ),
          end: Alignment(
            -0.39,
            0.46,
          ),
          colors: [
            ColorConstant.gray80001,
            ColorConstant.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteA70000WhiteA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.31,
            -0.04,
          ),
          end: Alignment(
            0.31,
            0.82,
          ),
          colors: [
            ColorConstant.whiteA70000,
            ColorConstant.whiteA700,
          ],
        ),
      );
  static BoxDecoration get gradientGray8008fGray9008f => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.52,
            -0.4,
          ),
          end: Alignment(
            -0.39,
            0.46,
          ),
          colors: [
            ColorConstant.gray8008f,
            ColorConstant.gray9008f,
          ],
        ),
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration(
        color: ColorConstant.black900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              18,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get txtOutlineGray200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtCustomBorderBL30 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
  );

  static BorderRadius customBorderBL30 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        30,
      ),
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
