import 'package:flutter/material.dart';

class GerenciarProdutosScreen extends StatefulWidget {
  @override
  _GerenciarProdutosScreenState createState() =>
      _GerenciarProdutosScreenState();
}

class _GerenciarProdutosScreenState extends State<GerenciarProdutosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar Produtos'),
      ),
      body: Center(
        child: Text('Aqui você pode gerenciar os produtos!'),
      ),
    );
  }
}
