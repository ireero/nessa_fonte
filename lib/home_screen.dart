import 'package:flutter/material.dart';
import 'package:nessa_fonte/first_page.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text(
            'Nessa Fonte',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(50, 10, 20, 22),

          ),onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstPage())
            );
          }, child: const Text('Acessar testes de fontes')),
        ],
      ),
    );
  }
}
