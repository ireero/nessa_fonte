import 'package:flutter/material.dart';
import 'home_screen.dart';


class Controle extends StatelessWidget {
  const Controle({super.key});


  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: const HomeScreen(),
      ),
    ),
    );
  }
}