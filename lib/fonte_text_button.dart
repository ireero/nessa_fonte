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
        onPressed: () {},
        child: Text(Fonte().text, style: testo()),
      ),
    );
  }
}