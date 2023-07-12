import 'package:flutter/material.dart';
import 'home_screen.dart';

class Controle extends StatefulWidget {
  Controle({super.key});

  List<Color> listaDeCores = [
    Colors.white,
    Colors.black,
    Colors.red.shade900,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
  ];
  int atualbackgroundColor = 0;
  int atualTextColor = 1;
  int troca = 1;

  @override
  State<Controle> createState() => _Controle();
}

class _Controle extends State<Controle> {
  void trocarTelas() {
    setState(() {
      switch (widget.troca) {
        case 1:
          widget.atualbackgroundColor = 1;
          widget.atualTextColor = 0;
          widget.troca = 2;
          break;
        case 2:
          widget.atualbackgroundColor = 0;
          widget.atualTextColor = 1;
          widget.troca = 3;
          break;
        case 3:
          widget.atualbackgroundColor = 2;
          widget.atualTextColor = 3;
          widget.troca = 4;
          break;
        case 4:
          widget.atualbackgroundColor = 3;
          widget.atualTextColor = 2;
          widget.troca = 5;
          break;
        case 5:
          widget.atualbackgroundColor = 4;
          widget.atualTextColor = 5;
          widget.troca = 6;
          break;
        case 6:
          widget.atualbackgroundColor = 5;
          widget.atualTextColor = 6;
          widget.troca = 1;
          break;
      }
    });
  }

  @override
  Widget build(context) {
    return HomeScreen(
      backgroundColor: widget.listaDeCores[widget.atualbackgroundColor],
      textColor: widget.listaDeCores[widget.atualTextColor],
      trocartTela: trocarTelas,
    );
  }
}
