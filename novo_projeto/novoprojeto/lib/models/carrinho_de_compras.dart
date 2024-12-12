import 'package:novoprojeto/models/produto.dart';

class CarrinhoDeCompras {
  String idCarrinho;
  String idPedido;
  String idCliente;
  int numTotalProdutos = 0;
  double valorTotalProdutos = 0.0;
  List<Produto> listaDeProdutos = [];

  CarrinhoDeCompras(
      {required this.idCarrinho,
      required this.idPedido,
      required this.idCliente});

  // Métodos para calcular frete, inserir cupom de desconto e exibir lista de compras podem ser adicionados aqui.
}
