class Produto {
  final String id;
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

  void cadastrarProduto() {
    print("Produto '$nome' cadastrado com sucesso.");
  }

  void editarProduto(
      {String? nome,
      double? precoVenda,
      double? precoFornecedor,
      int? estoque,
      String? descricao}) {
    if (nome != null) this.nome = nome;
    if (precoVenda != null) this.precoVenda = precoVenda;
    if (precoFornecedor != null) this.precoFornecedor = precoFornecedor;
    if (estoque != null) this.estoque = estoque;
    if (descricao != null) this.descricao = descricao;
    print("Produto '$nome' atualizado com sucesso.");
  }

  void removerProduto() {
    print("Produto '$nome' removido com sucesso.");
  }
}
