import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/font_square.dart';
import 'package:nessa_fonte/home_screen.dart';
import 'classes/fonte_class.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() {
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  final textController = TextEditingController();

  String errorText = '';

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  String text = 'Fonte';

  void mudarTexto(String texto) {
    setState(() {
      text = texto;
    });
  }

  List<FontSquare> lista_squares = [];

  @override
  void initState() {
    super.initState();
    lista_squares = [
      FontSquare(
        'aclonica',
        text: text,
      ),
      FontSquare(
        'acme',
        text: text,
      ),
      FontSquare(
        'lato',
        text: text,
      ),
      FontSquare(
        'sahitya',
        text: text,
      ),
      FontSquare(
        'sacramento',
        text: text,
      ),
      FontSquare(
        'adventPro',
        text: text,
      ),
      FontSquare(
        'akayaKanadaka',
        text: text,
      ),
    ];
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Google Fonts',
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemCount: lista_squares.length,
          itemBuilder: (ctx, index) => lista_squares[index],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          errorText = '';
          showDialog(
              context: context,
              builder: (ctx) => StatefulBuilder(
                    builder: (context, setState) => AlertDialog(
                      title: Text(
                        'Mudar Texto',
                        style: GoogleFonts.acme(color: Colors.black),
                      ),
                      content: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            label: const Text('Escrava o texto aqui...'),
                            errorText: errorText == '' ? null : errorText),
                        keyboardType: TextInputType.text,
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            if (textController.text == '' ||
                                textController.text == ' ') {
                              setState(() {
                                errorText = 'Escreva alguma coisa';
                              });
                            } else {
                              mudarTexto(textController.text);
                              lista_squares = [
                                FontSquare(
                                  'aclonica',
                                  text: text,
                                ),
                                FontSquare(
                                  'acme',
                                  text: text,
                                ),
                                FontSquare(
                                  'lato',
                                  text: text,
                                ),
                                FontSquare(
                                  'sahitya',
                                  text: text,
                                ),
                                FontSquare(
                                  'sacramento',
                                  text: text,
                                ),
                                FontSquare(
                                  'adventPro',
                                  text: text,
                                ),
                                FontSquare(
                                  'akayaKanadaka',
                                  text: text,
                                ),
                              ];
                              Navigator.of(ctx).pop();
                            }
                          },
                          child: Container(
                            color: Colors.orange,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 25),
                            child: const Text(
                              'OK',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.wrap_text,
          color: Colors.deepOrange,
          size: 32,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Teste'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Teste')
      ]),
    );
  }
}
