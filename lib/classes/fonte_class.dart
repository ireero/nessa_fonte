import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controle.dart';

class Fonte {
  final List<String> links_fontes = [
    'https://fonts.google.com/specimen/Lato?preview.text=Flutter&preview.text_type=custom&query=lato',
    'https://fonts.google.com/specimen/Sacramento?preview.text=Flutter&preview.text_type=custom&query=sacramento',
    'https://fonts.google.com/specimen/Sahitya?preview.text=Flutter&preview.text_type=custom&query=sahitya',
    'https://fonts.google.com/specimen/Aclonica?preview.text=Flutter&preview.text_type=custom&query=aclonica',
    'https://fonts.google.com/specimen/Acme?preview.text=Flutter&preview.text_type=custom&query=acme',
    '',
    ''
  ];

  final List<TextStyle> google_lato = [
    GoogleFonts.lato(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.lato(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.lato(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.lato(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.lato(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.lato(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.lato(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_sacramento = [
    GoogleFonts.sacramento(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.sacramento(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sacramento(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sacramento(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sacramento(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.sacramento(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.sacramento(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_sahitya = [
    GoogleFonts.sahitya(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.sahitya(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sahitya(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sahitya(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.sahitya(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.sahitya(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.sahitya(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_aclonica = [
    GoogleFonts.aclonica(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.aclonica(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.aclonica(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.aclonica(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.aclonica(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.aclonica(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.aclonica(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_acme = [
    GoogleFonts.acme(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.acme(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.acme(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.acme(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.acme(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.acme(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.acme(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_akayaKanadaka = [
    GoogleFonts.akayaKanadaka(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.akayaKanadaka(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];

  final List<TextStyle> google_adventPro = [
    GoogleFonts.adventPro(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
    ),
    GoogleFonts.adventPro(
      color: Colors.orange,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.adventPro(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.adventPro(
      color: Colors.orange,
      fontSize: 50,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    ),
    GoogleFonts.adventPro(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.lineThrough,
    ),
    GoogleFonts.adventPro(
      color: Colors.orange,
      fontSize: 50,
      decoration: TextDecoration.overline,
    ),
    GoogleFonts.adventPro(
      color: Colors.black,
      fontSize: 50,
      decoration: TextDecoration.combine(List<TextDecoration>.from(
          [TextDecoration.underline, TextDecoration.overline])),
    )
  ];
}
