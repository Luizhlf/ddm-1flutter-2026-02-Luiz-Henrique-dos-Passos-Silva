import 'package:flutter/material.dart';

import '../widgets/cabecalho_usuario.dart';
import '../widgets/cartao_consulta.dart';
import '../widgets/cartao_destaque.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _criarAppBar(),
      body: _criarConteudo(),
    );
  }

  AppBar _criarAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF176B87),
      foregroundColor: Colors.white,
      title: const Text(
        'MediSync',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Widget _criarConteudo() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        CabecalhoUsuario(),
        SizedBox(height: 24),
        CartaoDestaque(),
        SizedBox(height: 24),
        Text(
          'Próximas consultas',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF243642),
          ),
        ),
        SizedBox(height: 12),
        CartaoConsulta(
          especialidade: 'Clínica Geral',
          profissional: 'Dra. Ana Martins',
          data: '18 de setembro',
          horario: '14:30',
          icone: Icons.medical_services_outlined,
        ),
        SizedBox(height: 12),
        CartaoConsulta(
          especialidade: 'Odontologia',
          profissional: 'Dr. Carlos Lima',
          data: '25 de setembro',
          horario: '09:00',
          icone: Icons.health_and_safety_outlined,
        ),
      ],
    );
  }
}
