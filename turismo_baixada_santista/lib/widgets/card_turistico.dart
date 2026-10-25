
import 'package:flutter/material.dart';
import '../../models/ponto_turistico.dart';

class CardTuristico extends StatelessWidget {
  final PontoTuristico ponto;

  const CardTuristico({
    super.key,
    required this.ponto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              ponto.imagem,
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 160,
                  child: Center(
                    child: Icon(Icons.broken_image, size: 50),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Text(
            ponto.nome,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            ponto.cidade,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 8),

          Text(ponto.descricao),
        ],
      ),
    );
  }
}
