
// Aluno: Luiz Henrique dos Passos Silva


import 'package:flutter/material.dart';
import 'tela_turismo.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turismo na Baixada Santista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const TelaTurismo(),
    );
  }
}
