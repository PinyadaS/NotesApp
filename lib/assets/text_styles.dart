import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/utility.dart';

class TextStyles {
  static TextStyle style1() {
    return GoogleFonts.sacramento(
      textStyle: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Utility.getColorFromHex(Colour.aegean),
      ),
    );
  }
  static TextStyle style2() {
    return GoogleFonts.sacramento(
      textStyle: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Utility.getColorFromHex(Colour.aegean),
      ),
    );
  }
  static TextStyle style3() {
    return GoogleFonts.sacramento(
      textStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Utility.getColorFromHex(Colour.daisy),
      ),
    );
  }
  static TextStyle style4() {
    return GoogleFonts.sacramento(
      textStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Utility.getColorFromHex(Colour.aegean),
      ),
    );
  }
}
