import 'package:flutter/material.dart';
import 'package:netflix/detalhes.dart';

class Filme {
  final String nome;
  final String genero;
  final String imagem;
  final String descricao;

  Filme({
    required this.nome,
    required this.genero,
    required this.imagem,
    this.descricao = '',
  });
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  final List<Filme> listaFilmes = [
    Filme(
      nome: 'Vingadores',
      genero: 'Ação',
      imagem: 'assets/images/vingadores.jpg',
      descricao: 'Um monte de gente se socando',
    ),
    Filme(
      nome: 'Toy Story',
      genero: 'Animação',
      imagem: 'assets/images/toystory.jpg',
      descricao: 'Um monte de boneco falante',
    ),
    Filme(
        nome: "Interestrelar",
        genero: "Ficção Cientifica",
        imagem: "assets/images/interestrelar.png",
        descricao: "Um monte de planetas"
    ),
    Filme(
        nome: "Moana 2",
        genero: "Animação",
        imagem: "assets/images/Moana2.jpeg",
        descricao: "Um monte de praias"
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Lista de Filmes', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: listaFilmes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesFilmePage(filme: listaFilmes[index]),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.asset(
                      listaFilmes[index].imagem,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listaFilmes[index].nome,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            listaFilmes[index].genero,
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
