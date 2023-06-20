import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/fonte_text_button.dart';


class FontSquare extends StatelessWidget {
  FontSquare(this.tipoFonte,{super.key});

  var tipoFonte = '';

  @override
  Widget build(context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0, top: 50),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              width: 320,
              padding: const EdgeInsets.all(3.5),
              child: Text(
                  'Google Fonts\n$tipoFonte',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Colors.black
                  ),
                ),
              ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          height: 320,
          width: 320,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children:  <Widget> [
                    FontTextButton(position: 0, fonte_nome: tipoFonte),
                    FontTextButton(position: 1, fonte_nome: tipoFonte),
                    FontTextButton(position: 2, fonte_nome: tipoFonte),
                    FontTextButton(position: 3, fonte_nome: tipoFonte),
                    FontTextButton(position: 4, fonte_nome: tipoFonte),
                    FontTextButton(position: 5, fonte_nome: tipoFonte),
                    FontTextButton(position: 6, fonte_nome: tipoFonte),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 8.0, top: 50),
        ),
      ],
    );
  }
}