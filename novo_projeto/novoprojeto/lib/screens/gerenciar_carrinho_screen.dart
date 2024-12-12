import 'package:flutter/material.dart';

class GerenciarCarrinhoScreen extends StatefulWidget {
  @override
  _GerenciarCarrinhoScreenState createState() =>
      _GerenciarCarrinhoScreenState();
}

class _GerenciarCarrinhoScreenState extends State<GerenciarCarrinhoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de Compras'),
      ),
      body: Center(
        child: Text('Aqui você pode gerenciar o carrinho de compras!'),
      ),
    );
  }
}
