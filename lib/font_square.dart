import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/fonte_text_button.dart';
import 'classes/fonte_class.dart';

class FontSquare extends StatelessWidget {
  FontSquare(this.tipoFonte, {super.key});

  var tipoFonte = '';

  @override
  Widget build(context) {
    List<FontTextButton> lista_botoes = [
      FontTextButton(position: 0, fonte_nome: tipoFonte),
      FontTextButton(position: 1, fonte_nome: tipoFonte),
      FontTextButton(position: 2, fonte_nome: tipoFonte),
      FontTextButton(position: 3, fonte_nome: tipoFonte),
      FontTextButton(position: 4, fonte_nome: tipoFonte),
      FontTextButton(position: 5, fonte_nome: tipoFonte),
      FontTextButton(position: 6, fonte_nome: tipoFonte),
    ];
    qual_a_fonte() {
      switch (tipoFonte) {
        case 'lato':
          return Fonte().google_lato[0];
        case 'sacramento':
          return Fonte().google_sacramento[0];
        case 'sahitya':
          return Fonte().google_sahitya[0];
        case 'aclonica':
          return Fonte().google_aclonica[0];
        case 'acme':
          return Fonte().google_acme[0];
        case 'akayaKanadaka':
          return Fonte().google_akayaKanadaka[0];
        case 'adventPro':
          return Fonte().google_adventPro[0];
      }
    }

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                height: 250,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.all(3.5),
                      child: Text(
                        'Google Fonts\n$tipoFonte',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: qual_a_fonte()?.fontFamily,
                            shadows: const [
                              Shadow(
                                blurRadius: 2.5,
                                color: Colors.black,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: lista_botoes,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8.0, top: 10),
              ),
            ],
          ),
        ),
      ),
    ); /*Column(
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
                      shadows: const [
                        Shadow(
                          blurRadius: 2.5,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
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
    );*/
  }
}
