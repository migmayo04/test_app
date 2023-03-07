import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            100.00,
          ),
          margin: getMargin(
            top: 1,
            right: 15,
          ),
          padding: getPadding(
            left: 17,
            top: 9,
            right: 17,
            bottom: 9,
          ),
          decoration: AppDecoration.txtFillGray80001.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "MINI THALI",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoBold12,
          ),
        ),
      ),
    );
  }
}
