import 'package:flutter/material.dart';
import '../controle.dart';

class ChangeWord extends StatefulWidget {
  const ChangeWord({super.key});

  @override
  ChangeWordState createState() {
    return ChangeWordState();
  }
}

class ChangeWordState extends State<ChangeWord> {
  final textController = TextEditingController();

  @override
  Widget build(context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Escreva uma nova palavra'),
    );
  }
}
