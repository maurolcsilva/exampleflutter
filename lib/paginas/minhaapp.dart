import 'package:flutter/material.dart';
import 'formulario.dart';

class Minhaapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Teste',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Formulario(),
    );
  }
}