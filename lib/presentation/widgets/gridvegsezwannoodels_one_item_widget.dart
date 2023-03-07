import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';

// ignore: must_be_immutable
class GridvegsezwannoodelsOneItemWidget extends StatelessWidget {
  GridvegsezwannoodelsOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        top: 6,
        right: 5,
        bottom: 6,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: getHorizontalSize(
              81.00,
            ),
            margin: getMargin(
              top: 2,
            ),
            child: Text(
              "VEG SEZWAN \nNOODELS",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtLatoRegular12,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              "110.00",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLatoRegular12,
            ),
          ),
        ],
      ),
    );
  }
}
