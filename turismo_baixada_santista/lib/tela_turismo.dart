
import 'package:flutter/material.dart';

class TelaTurismo extends StatefulWidget {
  const TelaTurismo({super.key});

  @override
  State<TelaTurismo> createState() => _TelaTurismoState();
}

class _TelaTurismoState extends State<TelaTurismo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luiz Henrique'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Pontos Turísticos da Baixada Santista'),
      ),
    );
  }
}
