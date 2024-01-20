import 'package:flutter/material.dart';

class Utility {
  static Color getColorFromHex(String hexString, {String alphaChannel = 'FF'}) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
}