import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/first_page.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  HomeScreen(
      {required this.trocartTela,
      required this.backgroundColor,
      required this.textColor,
      super.key});

  Color backgroundColor;
  Color textColor;
  Function trocartTela;

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
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 8),
        ),
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
                                  color: textColor,
                                ),
                              ),
                              backgroundColor: backgroundColor,
                              content: Text(
                                  'Cor: ${textColor}\nDecoraçao: ${TextDecoration.lineThrough}\nFonte: ${lista_fonts[valor_aleatorio].fontFamily},',
                                  style: TextStyle(
                                      fontFamily: lista_fonts[valor_aleatorio]
                                          .fontFamily,
                                      color: textColor)),
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
                    trocartTela();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text(
                    'Nessa Fonte',
                    style: TextStyle(
                      fontFamily: lista_fonts[valor_aleatorio].fontFamily,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: textColor,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
