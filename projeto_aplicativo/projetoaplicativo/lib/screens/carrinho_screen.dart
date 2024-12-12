import 'package:flutter/material.dart';

class CarrinhoScreen extends StatefulWidget {
  @override
  _CarrinhoScreenState createState() => _CarrinhoScreenState();
}

class _CarrinhoScreenState extends State<CarrinhoScreen> {
  List<String> carrinho = ['Produto 1', 'Produto 2'];
  double totalCarrinho = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de Compras"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: carrinho.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(carrinho[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text("Total: R\$${totalCarrinho.toStringAsFixed(2)}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _calcularFrete(),
              child: Text("Calcular Frete"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 0, 255),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _aplicarCupomDesconto(),
              child: Text("Aplicar Cupom de Desconto"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 0, 255),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _calcularFrete() {
    setState(() {
      totalCarrinho += 15.0; // Adicionando valor de frete
    });
  }

  void _aplicarCupomDesconto() {
    setState(() {
      totalCarrinho -= 20.0; // Aplicando desconto
    });
  }
}
