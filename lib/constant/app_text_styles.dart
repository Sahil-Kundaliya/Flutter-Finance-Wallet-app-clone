import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Thin
  static TextStyle thin({Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w100, // Thin
      color: color,
    );
  }

  // Light
  static TextStyle light({Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w300, // Light
      color: color,
    );
  }

  // Regular
  static TextStyle regular(
      {Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w400, // Regular
      color: color,
    );
  }

  // Medium
  static TextStyle medium(
      {Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w500, // Medium
      color: color,
    );
  }

  // SemiBold
  static TextStyle semiBold(
      {Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w600, // SemiBold
      color: color,
    );
  }

  // Bold
  static TextStyle bold({Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w700, // Bold
      color: color,
    );
  }

  // ExtraBold
  static TextStyle extraBold(
      {Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w800, // ExtraBold
      color: color,
    );
  }

  // Black
  static TextStyle black({Color color = Colors.black, double fontSize = 14.0}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w900, // Black
      color: color,
    );
  }
}
