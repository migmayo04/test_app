import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillGray800 => BoxDecoration(
    color: ColorConstant.gray800,
  );
  static BoxDecoration get fillTeal300 => BoxDecoration(
    color: ColorConstant.teal300,
  );
  static BoxDecoration get txtGradientGray80001Gray80000 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(
        0.02,
        0.47,
      ),
      end: Alignment(
        0.5,
        0.51,
      ),
      colors: [
        ColorConstant.gray80001,
        ColorConstant.gray80000,
      ],
    ),
  );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration(
    color: ColorConstant.teal300,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.black9003f,
        spreadRadius: getHorizontalSize(
          2.00,
        ),
        blurRadius: getHorizontalSize(
          2.00,
        ),
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get fillGray300 => BoxDecoration(
    color: ColorConstant.gray300,
  );
  static BoxDecoration get fillGray100 => BoxDecoration(
    color: ColorConstant.gray100,
  );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
  static BoxDecoration get txtFillGray80001 => BoxDecoration(
    color: ColorConstant.gray80001,
  );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );
}
