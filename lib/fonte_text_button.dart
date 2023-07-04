import 'package:flutter/material.dart';
import 'classes/fonte_class.dart';


class FontTextButton extends StatelessWidget {
  FontTextButton({required var this.position, required var this.fonte_nome, super.key});

  final position;
  var fonte_nome;

  @override
  Widget build(context) {
     testo() {
      switch(fonte_nome) {
        case 'lato':
          return Fonte().google_lato[position];
        case 'sacramento':
          return Fonte().google_sacramento[position];
        case 'sahitya':
          return Fonte().google_sahitya[position];
        case 'aclonica':
          return Fonte().google_aclonica[position];
        case 'acme':
          return Fonte().google_acme[position];
        case 'akayaKanadaka':
          return Fonte().google_akayaKanadaka[position];
        case 'adventPro':
          return Fonte().google_adventPro[position];
      }
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: testo()?.color == Colors.white ? Colors.black : Colors.white,
              title: Text(
                Fonte().text,
                style: testo(),
              ),
              content: Text('Cor: ${testo()?.color}\nDecoraçao: ${testo()?.decoration}\nFonte: ${testo()?.fontFamily}', style: TextStyle(fontFamily: testo()?.fontFamily,
                color: testo()?.color == Colors.white ? Colors.white : Colors.black,
              ),),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Colors.orange,
                    padding: const EdgeInsets.all(14),
                    child: Text("OK", style: TextStyle(
                      color: Colors.white,
                      fontFamily: testo()?.fontFamily,
                    ),),
                  ),
                ),
              ],
            ),
          );
        },
        child: Text(Fonte().text, style: testo()),
      ),
    );
  }
}