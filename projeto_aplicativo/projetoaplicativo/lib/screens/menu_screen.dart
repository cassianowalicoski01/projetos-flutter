import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _buildMenuItem(
              context,
              "Gerenciar Produtos",
              '/produtos',
              Icons.store,
            ),
            _buildMenuItem(
              context,
              "Gerenciar Clientes",
              '/clientes',
              Icons.account_circle,
            ),
            _buildMenuItem(
              context,
              "Acessar Painel de Controle",
              '/painel',
              Icons.admin_panel_settings,
            ),
            _buildMenuItem(
              context,
              "Gerenciar Carrinho de Compras",
              '/carrinho',
              Icons.shopping_cart,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, String route, IconData icon) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 8,
        shadowColor: Colors.black45,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 31, 5, 70), const Color.fromARGB(255, 55, 104, 182)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(icon, size: 35, color: const Color.fromARGB(255, 25, 0, 255)),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                    color: const Color.fromARGB(255, 161, 161, 161),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
