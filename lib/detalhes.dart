import 'package:flutter/material.dart';
import 'package:netflix/lista.dart';

class DetalhesFilmePage extends StatelessWidget {

  final Filme filme;

  const DetalhesFilmePage({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(filme.nome)),
      body: Center(child: Column(
        children: [
          Image.asset(filme.imagem),
          Text(filme.nome, style: TextStyle(
            fontSize: 24,
          ),)
        ],
      ),)
    );
  }
}
