import 'package:flutter/material.dart';
import 'home_screen.dart';


class Controle extends StatefulWidget {
  Controle({super.key});

  List<Color> listaDeCores = [
    Colors.white,
    Colors.black,
    Colors.red,
    Colors.blue,
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
      switch(widget.troca) {
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
