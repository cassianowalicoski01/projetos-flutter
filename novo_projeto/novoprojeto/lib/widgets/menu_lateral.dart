import 'package:flutter/material.dart';
import 'package:novoprojeto/screens/gerenciar_clientes_screen.dart';
import 'package:novoprojeto/screens/gerenciar_produtos_screen.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Gerenciar Produtos'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GerenciarProdutosScreen()));
            },
          ),
          ListTile(
            title: Text('Gerenciar Clientes'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GerenciarClientesScreen()));
            },
          ),
          // Outros itens de menu
        ],
      ),
    );
  }
}
