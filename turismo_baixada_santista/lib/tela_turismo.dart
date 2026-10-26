
import 'package:flutter/material.dart';
import 'models/ponto_turistico.dart';
import 'widgets/card_turistico.dart';

class TelaTurismo extends StatefulWidget {
  const TelaTurismo({super.key});

  @override
  State<TelaTurismo> createState() => _TelaTurismoState();
}

class _TelaTurismoState extends State<TelaTurismo> {
  final List<PontoTuristico> pontos = [
    PontoTuristico(
      nome: 'Jardim da Orla',
      cidade: 'Santos',
      descricao:
          'Jardim à beira-mar, ideal para caminhadas e lazer.',
      imagem:
          'assets/imagens/Jardim da Orla.jpeg',
    ),
    PontoTuristico(
      nome: 'Museu do Café',
      cidade: 'Santos',
      descricao:
          'Museu dedicado à história do café brasileiro.',
      imagem:
          'assets/imagens/museu-do-cafe.jpg',
    ),
    PontoTuristico(
      nome: 'Aquário Municipal',
      cidade: 'Santos',
      descricao:
          'Espaço dedicado à vida marinha e à educação ambiental.',
      imagem:
          'assets/imagens/Aquario.jpeg',
    ),
    PontoTuristico(
      nome: 'Ilha Porchat',
      cidade: 'São Vicente',
      descricao:
          'Local conhecido pelas belas vistas do litoral e pelo Memorial dos 500 Anos.',
      imagem:
          'assets/imagens/Ilha_Porchat.jpg',
    ),
    PontoTuristico(
      nome: 'Orquidário Municipal',
      cidade: 'Santos',
      descricao:
          'Parque com diversas espécies de plantas, animais e áreas verdes.',
      imagem:
          'assets/imagens/Orquidário.jpeg',
    ),
    PontoTuristico(
      nome: 'Praia do Tombo',
      cidade: 'Guarujá',
      descricao:
          'Praia conhecida pelas ondas fortes e pela prática de surfe.',
      imagem:
          'assets/imagens/Praia_do_Tombo.jpg',
    ),
    PontoTuristico(
      nome: 'Parque Estadual Xixová-Japuí',
      cidade: 'Praia Grande e São Vicente',
      descricao:
          'Área de preservação ambiental com Mata Atlântica e belas paisagens naturais.',
      imagem:
          'assets/imagens/Parque Estadual Xixová-Japuí.jpeg',
    ),
  ];

  void alterarFavorito(int index, bool valor) {
    setState(() {
      pontos[index].favorito = valor;
    });
  }

  void alterarVisitado(int index, bool valor) {
    setState(() {
      pontos[index].visitado = valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Luiz Henrique dos Passos Silva',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: pontos.length,
        itemBuilder: (context, index) {
          return CardTuristico(
            ponto: pontos[index],
            onFavorito: (valor) {
              alterarFavorito(index, valor);
            },
            onVisitado: (valor) {
              alterarVisitado(index, valor);
            },
          );
        },
      ),
    );
  }
}
