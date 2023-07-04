import 'package:flutter/material.dart';
import 'package:nessa_fonte/font_square.dart';
import 'package:nessa_fonte/controle.dart';
import 'classes/fonte_class.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

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
        title: const Text('Voltar'),
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
                    content: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Escreva uma nova palavra'),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          color: Colors.orange,
                          padding: const EdgeInsets.all(14),
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              color: Colors.white,
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
