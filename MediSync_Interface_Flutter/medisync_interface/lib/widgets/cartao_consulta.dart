import 'package:flutter/material.dart';

class CartaoConsulta extends StatelessWidget {
  final String especialidade;
  final String profissional;
  final String datas;
  final String horario;
  final IconData icone;

  const CartaoConsulta({
    super.key,
    required this.especialidade,
    required this.profissional,
    required this.datas,
    required this.horario,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFDDEFF4),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icone, color: const Color(0xFF176B87), size: 28),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    especialidade,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    profissional,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$data • $horario',
                    style: const TextStyle(
                      color: Color(0xFF176B87),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
