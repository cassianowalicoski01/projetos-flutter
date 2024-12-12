import 'package:flutter/material.dart';

class PainelControleScreen extends StatefulWidget {
  @override
  _PainelControleScreenState createState() => _PainelControleScreenState();
}

class _PainelControleScreenState extends State<PainelControleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel de Controle'),
      ),
      body: Center(
        child: Text('Aqui você pode acessar o painel de controle!'),
      ),
    );
  }
}
