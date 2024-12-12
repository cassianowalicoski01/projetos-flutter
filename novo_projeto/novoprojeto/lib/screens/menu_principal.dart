import 'package:flutter/material.dart';
import 'gerenciar_produtos_screen.dart';
import 'gerenciar_clientes_screen.dart';
import 'painel_controle_screen.dart';
import 'gerenciar_carrinho_screen.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Principal')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GerenciarProdutosScreen()));
              },
              child: Text('Gerenciar Produtos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GerenciarClientesScreen()));
              },
              child: Text('Gerenciar Clientes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PainelControleScreen()));
              },
              child: Text('Painel de Controle'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GerenciarCarrinhoScreen()));
              },
              child: Text('Carrinho de Compras'),
            ),
          ],
        ),
      ),
    );
  }
}
