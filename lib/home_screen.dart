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
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text('Alert Dialog Box'),
                      content: const Text('You have raised a Alert Dialog Box'),
                      actions: <Widget> [
                        TextButton(onPressed: () {
                          Navigator.of(ctx).pop();
                        }, child: Container(
                          color: Colors.orange,
                          padding: const EdgeInsets.all(14),
                          child: const Text('OK'),
                        ))
                      ],
                    )
                  );
                },
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
