import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/login.dart';

void main() {
  runApp(const MyApp());
}


//comando "st" já faz a classe pronta
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),//qual a tela q ira iniciar meu app?
    );
  }
}
