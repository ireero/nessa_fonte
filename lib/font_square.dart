import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classes/fonte_class.dart';
import 'package:nessa_fonte/fonte_text_button.dart';


class FontSquare extends StatelessWidget {
  const FontSquare({super.key});

  @override
  Widget build(context) {

    return Container(
      color: Colors.blue,
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(20),
      height: 255,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  <Widget> [
            Text(
              'Google Fonts -> Lato',
              style: GoogleFonts.lato(
                fontSize: 24,
                decoration: TextDecoration.none,
                color: Colors.white
              ),
            ),
            FontTextButton(position: 0),
            FontTextButton(position
                : 1),
            FontTextButton(position: 2),
            FontTextButton(position: 3),
          ],
        ),
      ),
    );
  }
}