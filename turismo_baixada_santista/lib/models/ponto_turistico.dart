
class PontoTuristico {
  final String nome;
  final String cidade;
  final String descricao;
  final String imagem;

  bool favorito;
  bool visitado;

  PontoTuristico({
    required this.nome,
    required this.cidade,
    required this.descricao,
    required this.imagem,
    this.favorito = false,
    this.visitado = false,
  });
}
