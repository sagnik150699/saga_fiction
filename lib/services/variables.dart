import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variables {
  Text text2(str, size, colour, weight) {
    return Text(
      str,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(decoration: TextDecoration.none,
          color: colour,
          fontSize: size,
          fontWeight: weight,
        ),
      ),
    );
  }
  Text text1(str, size, colour, weight) {
    return Text(
      str,
      textAlign: TextAlign.left,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(decoration: TextDecoration.none,
          color: colour,
          fontSize: size,
          fontWeight: weight,
        ),
      ),
    );
  }
}
