class CarrinhoDeCompras {
  final String idCarrinho;
  final String idPedido;
  final String idCliente;
  int numTotalProdutos = 0;
  double valorTotalProdutos = 0.0;
  List<Map<String, dynamic>> listaDeProdutos = [];

  CarrinhoDeCompras(this.idCarrinho, this.idPedido, this.idCliente);

  double calcularFrete(double distanciaKm) {
    double frete = distanciaKm * 1.50;
    return frete;
  }

  void exibeListaCompras() {
    if (listaDeProdutos.isEmpty) {
      print("O carrinho está vazio.");
    } else {
      for (var produto in listaDeProdutos) {
        print("${produto['nome']}: R\$${produto['preco_venda']} (Quantidade: ${produto['quantidade']})");
      }
      print("Total de produtos: $numTotalProdutos");
      print("Valor total dos produtos: R\$${valorTotalProdutos.toStringAsFixed(2)}");
    }
  }

  void insereCupomDesconto(double porcentagemDesconto) {
    double desconto = (valorTotalProdutos * porcentagemDesconto) / 100;
    double valorComDesconto = valorTotalProdutos - desconto;
    print("Desconto de $porcentagemDesconto% aplicado. Valor com desconto: R\$${valorComDesconto.toStringAsFixed(2)}");
  }
}
