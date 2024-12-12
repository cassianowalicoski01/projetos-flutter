class Produto {
  String id;
  String nome;
  double precoVenda;
  double precoFornecedor;
  int estoque;
  String descricao;

  Produto(
      {required this.id,
      required this.nome,
      required this.precoVenda,
      required this.precoFornecedor,
      required this.estoque,
      required this.descricao});

  // Métodos para cadastrar, editar e remover produtos podem ser adicionados aqui.
}
