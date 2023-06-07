import 'package:flutter/material.dart';
import 'classes/fonte_class.dart';


class FontTextButton extends StatelessWidget {
  FontTextButton({required var this.position, required var this.fonte_nome, super.key});

  final position;
  var fonte_nome;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {},
        child: Text(Fonte().text, style: fonte_nome == 'lato' ? Fonte().google_lato[position] : Fonte().google_sacramento[position]),
      ),
    );
  }
}