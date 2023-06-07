import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Fonte {

  final String text = 'Fonte 1';
  final List<TextStyle> google_lato = [GoogleFonts.lato(color: Colors.black,
    fontSize: 50,
    decoration: TextDecoration.underline,
    decorationColor: Colors.black,), GoogleFonts.lato(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  ), GoogleFonts.lato(
    color: Colors.black,
    fontSize: 50,
    decoration: TextDecoration.none,
  ), GoogleFonts.lato(
    color: Colors.white,
    fontSize: 50,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.none,
  ), GoogleFonts.lato(
    color: Colors.black,
    fontSize: 50,
    decoration: TextDecoration.lineThrough,
  )];

  final List<TextStyle> google_sacramento = [GoogleFonts.lato(color: Colors.black,
  fontSize: 50,
  decoration: TextDecoration.underline,
  decorationColor: Colors.black,), GoogleFonts.lato(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.none,
  ), GoogleFonts.lato(
  color: Colors.black,
  fontSize: 50,
  decoration: TextDecoration.none,
  ), GoogleFonts.lato(
  color: Colors.white,
  fontSize: 50,
  fontStyle: FontStyle.italic,
  decoration: TextDecoration.none,
  ), GoogleFonts.lato(
  color: Colors.black,
  fontSize: 50,
  decoration: TextDecoration.lineThrough,
  )];
}