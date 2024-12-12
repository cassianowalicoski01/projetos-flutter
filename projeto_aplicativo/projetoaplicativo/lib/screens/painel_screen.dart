import 'package:flutter/material.dart';

class PainelScreen extends StatefulWidget {
  @override
  _PainelScreenState createState() => _PainelScreenState();
}

class _PainelScreenState extends State<PainelScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Painel de Controle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _acessarPainel,
              child: Text("Acessar Painel"),
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

  void _acessarPainel() {
    if (_emailController.text == "admin@admin.com" &&
        _senhaController.text == "admin123") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Acesso concedido!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Falha no acesso!")),
      );
    }
  }
}
