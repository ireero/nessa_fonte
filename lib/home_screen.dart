import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/choice_type_font.dart';
import 'package:nessa_fonte/first_page.dart';
import 'dart:math';

import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(context) {
    List<TextStyle> lista_fonts = [
      GoogleFonts.lato(),
      GoogleFonts.sacramento(),
      GoogleFonts.sahitya(),
      GoogleFonts.aclonica(),
      GoogleFonts.acme(),
      GoogleFonts.akayaKanadaka(),
      GoogleFonts.adventPro()
    ];
    var valor_aleatorio = Random().nextInt(7);

    void alterarValorAleatorio() {
      valor_aleatorio = Random().nextInt(7);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onLongPress: () {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: Text(
                                'Nessa Fonte',
                                style: TextStyle(
                                  fontFamily:
                                      lista_fonts[valor_aleatorio].fontFamily,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.orange,
                                ),
                              ),
                              backgroundColor: Colors.white,
                              content: Text(
                                  'Cor: ${Colors.orange}\nDecoraçao: ${TextDecoration.lineThrough}\nFonte: ${lista_fonts[valor_aleatorio].fontFamily},',
                                  style: TextStyle(
                                      fontFamily: lista_fonts[valor_aleatorio]
                                          .fontFamily,
                                      color: Colors.orange)),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      padding: const EdgeInsets.all(14),
                                      child: const Text('OK'),
                                    ))
                              ],
                            ));
                  },
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: ChoiceTypeFont(),
                            type: PageTransitionType.fade));
                  },
                  child: Text(
                    'Nessa Fonte',
                    style: TextStyle(
                      fontFamily: lista_fonts[valor_aleatorio].fontFamily,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.orange,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
