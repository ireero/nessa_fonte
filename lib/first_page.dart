import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/font_sware.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(context) {



    return Container(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [FontSquare(), FontSquare(), FontSquare(), FontSquare(), FontSquare()],
          ),
        ),
      ),
    );
  }
}