import 'package:flutter/material.dart';
import 'package:nessa_fonte/first_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({required this.trocartTela,required this.backgroundColor, required this.textColor,super.key});

  Color backgroundColor;
  Color textColor;
  Function trocartTela;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  trocartTela();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const FirstPage()
                  ));
                },
                child: Text(
                  'Nessa Fonte',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: textColor,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
