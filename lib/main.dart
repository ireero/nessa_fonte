import 'package:flutter/material.dart';
import 'package:nessa_fonte/controle.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Controle(),
    ),
  ));
}