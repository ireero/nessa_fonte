import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/fonte_text_button.dart';
import 'classes/fonte_class.dart';

class FontSquare extends StatelessWidget {
  FontSquare(this.tipoFonte, {required this.text, super.key});

  var tipoFonte = '';
  String text;
  int numFonte = -1;

  @override
  Widget build(context) {
    List<FontTextButton> lista_botoes = [
      FontTextButton(
        position: 0,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 1,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 2,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 3,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 4,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 5,
        fonte_nome: tipoFonte,
        text: text,
      ),
      FontTextButton(
        position: 6,
        fonte_nome: tipoFonte,
        text: text,
      ),
    ];
    qual_a_fonte() {
      switch (tipoFonte) {
        case 'lato':
          numFonte = 0;
          return Fonte().google_lato[0];
        case 'sacramento':
          numFonte = 1;
          return Fonte().google_sacramento[0];
        case 'sahitya':
          numFonte = 2;
          return Fonte().google_sahitya[0];
        case 'aclonica':
          numFonte = 3;
          return Fonte().google_aclonica[0];
        case 'acme':
          numFonte = 4;
          return Fonte().google_acme[0];
        case 'akayaKanadaka':
          numFonte = 5;
          return Fonte().google_akayaKanadaka[0];
        case 'adventPro':
          numFonte = 6;
          return Fonte().google_adventPro[0];
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        margin: const EdgeInsets.all(20),
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 80),
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () async {
                            Fonte().openWebsite(numFonte);
                          },
                          child: Container(
                            child: Text(
                              tipoFonte,
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
                                  fontSize: 25,
                                  decoration: TextDecoration.none,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: lista_botoes,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
