import 'package:flutter/material.dart';

class CabecalhoUsuario extends StatelessWidget {
  const CabecalhoUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: Color(0xFFDDEFF4),
          child: Icon(Icons.person, color: Color(0xFF176B87), size: 30),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Olá, Luiz!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF243642),
                ),
              ),
              Text(
                'Cuide da sua saúde com praticidade.',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
