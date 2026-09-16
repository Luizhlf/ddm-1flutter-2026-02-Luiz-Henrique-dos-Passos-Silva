import 'package:flutter/material.dart';

import 'telas/tela_inicial.dart';

void main() {
  runApp(const Principal());
}

/// Aluno: Luiz Henrique dos Passos Silva
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediSync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF176B87)),
        scaffoldBackgroundColor: const Color(0xFFF4F8FA),
        useMaterial3: true,
      ),
      home: const TelaInicial(),
    );
  }
}
