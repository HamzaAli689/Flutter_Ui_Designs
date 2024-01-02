import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray80001 = fromHex('#4a4a4a');

  static Color black9003f = fromHex('#3f000000');

  static Color black90001 = fromHex('#010101');

  static Color black900 = fromHex('#000000');

  static Color gray9008f = fromHex('#8f282828');

  static Color yellow800 = fromHex('#f79e1b');

  static Color gray50001 = fromHex('#9c9674');

  static Color blueGray900 = fromHex('#373630');

  static Color deepOrangeA400 = fromHex('#ff2a00');

  static Color gray600 = fromHex('#7a7565');

  static Color gray700 = fromHex('#787043');

  static Color gray60002 = fromHex('#847f71');

  static Color gray400 = fromHex('#b7b7b7');

  static Color gray500 = fromHex('#979797');

  static Color gray60001 = fromHex('#8b8779');

  static Color blueGray400 = fromHex('#8b8a8a');

  static Color gray800 = fromHex('#393939');

  static Color gray900 = fromHex('#282828');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#eaeaea');

  static Color gray300 = fromHex('#dedcd6');

  static Color gray60003 = fromHex('#838383');

  static Color gray30001 = fromHex('#dcdbd5');

  static Color gray100 = fromHex('#f4f4f4');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color lightGreen50 = fromHex('#eff2dd');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray8008f = fromHex('#8f4a4a4a');

  static Color gray70001 = fromHex('#787144');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
