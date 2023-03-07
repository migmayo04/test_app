import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#7c7a7a');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color teal300 = fromHex('#63b4c4');

  static Color black900 = fromHex('#000000');

  static Color gray800 = fromHex('#50514f');

  static Color gray80001 = fromHex('#50504f');

  static Color gray80000 = fromHex('#0050504f');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray300 = fromHex('#e1e1e1');

  static Color redA700 = fromHex('#ff0000');

  static Color gray100 = fromHex('#f5f5f5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
