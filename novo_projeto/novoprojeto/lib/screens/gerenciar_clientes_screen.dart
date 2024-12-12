import 'package:flutter/material.dart';

class GerenciarClientesScreen extends StatefulWidget {
  @override
  _GerenciarClientesScreenState createState() =>
      _GerenciarClientesScreenState();
}

class _GerenciarClientesScreenState extends State<GerenciarClientesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar Clientes'),
      ),
      body: Center(
        child: Text('Aqui você pode gerenciar os clientes!'),
      ),
    );
  }
}
