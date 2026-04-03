import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myTextStyle(Color color,double size,bool bold){
    return GoogleFonts.roboto(
      fontSize: size,
      color: color,
      fontWeight:bold?FontWeight.bold:FontWeight.normal);}