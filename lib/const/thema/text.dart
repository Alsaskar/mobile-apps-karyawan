import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pendonor_sukarela/const/thema/color.dart';

Widget textAppBar(String text){
  return  Text(
  text,
  style: GoogleFonts.inter(
    color: primaryBlack,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),textAlign: TextAlign.center,
);

}