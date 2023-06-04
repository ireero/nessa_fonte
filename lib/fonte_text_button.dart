import 'package:flutter/material.dart';
import 'classes/fonte_class.dart';


class FontTextButton extends StatelessWidget {
  FontTextButton({super.key, required var this.position});

  var position;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {},
        child: Text(Fonte().text, style: Fonte().styles[position]),
      ),
    );
  }
}