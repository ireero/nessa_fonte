import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(context) {



    return Container(
      color: const Color.fromARGB(20, 20, 20, 20),
      child: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: const [
                      Text('Fonte 1'),
                      Text('Fonte 1'),
                      Text('Fonte 1')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}