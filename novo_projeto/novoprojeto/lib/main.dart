import 'package:flutter/material.dart';
import 'screens/gerenciar_produtos_screen.dart'; // Corrigido: agora está na pasta 'screens'
import 'screens/gerenciar_clientes_screen.dart'; // Corrigido: agora está na pasta 'screens'
import 'screens/painel_controle_screen.dart'; // Corrigido: agora está na pasta 'screens'
import 'screens/gerenciar_carrinho_screen.dart'; // Corrigido: agora está na pasta 'screens'

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MenuPrincipal')),
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
