import 'package:flutter/material.dart';
import 'package:nessa_fonte/font_square.dart';
import 'package:nessa_fonte/controle.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FontSquare('aclonica'),
                FontSquare('acme'),
                FontSquare('lato',),
                FontSquare('sahitya'),
                FontSquare('sacramento',),
                FontSquare('adventPro',),
                FontSquare('akayaKanadaka',),
              ],
            ),
          ),
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
                  hintText: 'Escreva uma nova palavra'
                ),
              ),
              actions: <Widget> [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Colors.orange,
                    padding: const EdgeInsets.all(14),
                    child: const Text('OK', style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                )
              ],
            )
          );
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
