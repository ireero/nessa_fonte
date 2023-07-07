import 'package:flutter/material.dart';
import 'package:nessa_fonte/font_square.dart';
import 'package:nessa_fonte/controle.dart';
import 'classes/fonte_class.dart';
import 'classes/change_word.dart';

class FirstPage extends StatelessWidget {
  FirstPage({required this.mudarTexto, super.key});

  final List<FontSquare> lista_squares = [
    FontSquare('aclonica'),
    FontSquare('acme'),
    FontSquare(
      'lato',
    ),
    FontSquare('sahitya'),
    FontSquare(
      'sacramento',
    ),
    FontSquare(
      'adventPro',
    ),
    FontSquare(
      'akayaKanadaka',
    ),
  ];

  Function mudarTexto;

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
                    title: const Text('Alert Dialog Box'),
                    content: const ChangeWord(),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          mudarTexto('Teste');
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
