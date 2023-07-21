import 'package:flutter/material.dart';
import 'package:nessa_fonte/controle.dart';
import 'package:shared_preferences/shared_preferences.dart';

var kcolorScheme = ColorScheme.fromSeed(seedColor: Colors.orange);

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kcolorScheme,
      cardTheme: CardTheme().copyWith(),
    ),
    home: Scaffold(
      body: Controle(),
    ),
  ));
}
