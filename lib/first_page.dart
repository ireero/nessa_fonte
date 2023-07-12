import 'package:flutter/material.dart';
import 'package:nessa_fonte/font_square.dart';
import 'package:nessa_fonte/controle.dart';
import 'classes/fonte_class.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() {
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  final textController = TextEditingController();

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
        backgroundColor: Colors.orange,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Google Fonts'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: lista_squares.length,
          itemBuilder: (ctx, index) => lista_squares[index],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                    title: const Text('Mude o texto'),
                    content: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                          label: Text('Digite somente uma palavra'),
                          errorText: textController.text == '' ||
                                  textController.text == ' '
                              ? 'Não deixe o campo vazio'
                              : null),
                      keyboardType: TextInputType.text,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
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
                  ));
        },
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.wrap_text,
          color: Colors.black,
          size: 32,
        ),
      ),
    );
  }
}
