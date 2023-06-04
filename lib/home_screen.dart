import 'package:flutter/material.dart';
import 'package:nessa_fonte/first_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const FirstPage()
                  ));
                },
                child: const Text(
                  'Nessa Fonte',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
