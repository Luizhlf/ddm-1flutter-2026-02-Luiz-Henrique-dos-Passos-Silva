
import 'package:flutter/material.dart';
import '../models/ponto_turistico.dart';

class CardTuristico extends StatelessWidget {
  final PontoTuristico ponto;
  final ValueChanged<bool> onFavorito;
  final ValueChanged<bool> onVisitado;

  const CardTuristico({
    super.key,
    required this.ponto,
    required this.onFavorito,
    required this.onVisitado,
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
          // Imagem do ponto turístico
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              ponto.imagem,
              width: double.infinity,
               height: 600,
               fit: BoxFit.cover,
               filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 160,
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                    ),
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

          const SizedBox(height: 4),
  
          Text(
            ponto.cidade,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            ponto.descricao,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      value: ponto.favorito,
                      onChanged: (valor) {
                        onFavorito(valor ?? false);
                      },
                    ),
                    const Flexible(
                      child: Text('Favorito'),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      value: ponto.visitado,
                      onChanged: (valor) {
                        onVisitado(valor ?? false);
                      },
                    ),
                    const Flexible(
                      child: Text('Visitado'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
