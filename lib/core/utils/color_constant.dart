import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color gray600 = fromHex('#7f7f7f');

  static Color gray700 = fromHex('#5c5752');

  static Color gray90059 = fromHex('#590f161e');

  static Color amber400 = fromHex('#ffd228');

  static Color blueA700 = fromHex('#0064fe');

  static Color gray900 = fromHex('#16110d');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray100 = fromHex('#f5f5f5');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#888888');

  static Color gray9007f = fromHex('#7f0f161e');

  static Color bluegray400 = fromHex('#8e8e8e');

  static Color blueA7004c = fromHex('#4c0064fe');

  static Color whiteA701 = fromHex('#fefefe');

  static Color deepPurpleA700 = fromHex('#2c14dd');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
