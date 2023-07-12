import 'package:flutter/material.dart';
import 'classes/fonte_class.dart';

class FontTextButton extends StatefulWidget {
  FontTextButton(
      {required String this.text,
      required var this.position,
      required var this.fonte_nome,
      super.key});

  final position;
  var fonte_nome;
  String text;

  @override
  State<FontTextButton> createState() {
    return _FontTextButton();
  }
}

class _FontTextButton extends State<FontTextButton> {
  @override
  Widget build(context) {
    testo() {
      switch (widget.fonte_nome) {
        case 'lato':
          return Fonte().google_lato[widget.position];
        case 'sacramento':
          return Fonte().google_sacramento[widget.position];
        case 'sahitya':
          return Fonte().google_sahitya[widget.position];
        case 'aclonica':
          return Fonte().google_aclonica[widget.position];
        case 'acme':
          return Fonte().google_acme[widget.position];
        case 'akayaKanadaka':
          return Fonte().google_akayaKanadaka[widget.position];
        case 'adventPro':
          return Fonte().google_adventPro[widget.position];
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor:
                  testo()?.color == Colors.white ? Colors.black : Colors.white,
              title: Text(
                widget.text,
                style: testo(),
              ),
              content: Text(
                'Cor: ${testo()?.color}\nDecoraçao: ${testo()?.decoration}\nFonte: ${testo()?.fontFamily}',
                style: TextStyle(
                  fontFamily: testo()?.fontFamily,
                  color: testo()?.color == Colors.white
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Colors.orange,
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      "OK",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: testo()?.fontFamily,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: Text(widget.text, style: testo()),
      ),
    );
  }
}
