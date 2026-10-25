
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
      descricao: 'Jardim à beira-mar, ideal para caminhadas.',
      imagem: 'https://picsum.photos/seed/orla/600/300',
    ),
    PontoTuristico(
      nome: 'Museu do Café',
      cidade: 'Santos',
      descricao: 'Museu dedicado à história do café brasileiro.',
      imagem: 'https://picsum.photos/seed/cafe/600/300',
    ),
    PontoTuristico(
      nome: 'Aquário Municipal',
      cidade: 'Santos',
      descricao: 'Espaço de exposição e educação sobre a vida marinha.',
      imagem: 'https://picsum.photos/seed/aquario/600/300',
    ),
    PontoTuristico(
      nome: 'Ponte Pênsil',
      cidade: 'São Vicente',
      descricao: 'Ponte histórica e cartão-postal da cidade.',
      imagem: 'https://picsum.photos/seed/ponte/600/300',
    ),
    PontoTuristico(
      nome: 'Praia do Gonzaguinha',
      cidade: 'São Vicente',
      descricao: 'Praia com belas paisagens e espaços de lazer.',
      imagem: 'https://picsum.photos/seed/praia/600/300',
    ),
    PontoTuristico(
      nome: 'Mirante da Campina',
      cidade: 'Guarujá',
      descricao: 'Mirante com vista panorâmica para a Enseada.',
      imagem: 'https://picsum.photos/seed/mirante/600/300',
    ),
    PontoTuristico(
      nome: 'Fortaleza de Itaipu',
      cidade: 'Praia Grande',
      descricao: 'Fortificação histórica cercada pela natureza.',
      imagem: 'https://picsum.photos/seed/fortaleza/600/300',
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
        title: const Text('Luiz Henrique dos Passos Silva'),
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
