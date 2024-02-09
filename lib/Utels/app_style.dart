import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight fontwaight) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fontwaight);
}

TextStyle appstylewithHeight(
    double size, Color color, FontWeight fontwaight, double het) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fontwaight, height: het);
}
