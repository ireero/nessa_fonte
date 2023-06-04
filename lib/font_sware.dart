import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){},
                child: Text('Fonte 1', style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 50,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text('Fonte 1', style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text('Fonte 1', style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 50,
                  decoration: TextDecoration.none,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text('Fonte 1', style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}