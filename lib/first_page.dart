import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/font_square.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(context) {



    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Teste'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [FontSquare('lato',), FontSquare('sacramento',), FontSquare('lato',), FontSquare('sacramento',), FontSquare('lato'),],
            ),
          ),
        ),
      ),
    );
  }
}