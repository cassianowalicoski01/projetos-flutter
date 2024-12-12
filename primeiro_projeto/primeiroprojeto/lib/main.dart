import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste do App',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _numero1Controller = TextEditingController();
  TextEditingController _numero2Controller = TextEditingController();
  String _texto = "Digite suas credênciais de acesso";
  double _soma = 0;
  String _resultado = "Resultado aqui...";

  _verificarAcesso() {
    setState(() {
      if (_emailController.text == "teste@teste.com" && _senhaController.text == "1234") {
        _texto = "Email: ${_emailController.text} | Senha: ${_senhaController.text}";
      } else {
        _texto = "Email e/ou Senha inválidos";
      }
    });
  }

  _somar() {
    setState(() {
      _soma = double.parse(_numero1Controller.text) + double.parse(_numero2Controller.text);
      _resultado = "A soma é ${_soma.toString()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Text(
            //   "Login",
            //   style: TextStyle(
            //     color: Colors.lightBlueAccent,
            //     fontSize: 40.0,
            //   ),
            // ),
            // const Icon(
            //   Icons.person_2,
            //   color: Color.fromARGB(255, 0, 132, 255),
            //   size: 65.0,
            // ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Digite seu email',
                hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                ),
                hoverColor: Colors.cyan,
              ),
            ),
            TextField(
              controller: _senhaController,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Digite sua senha',
                hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                ),
                hoverColor: Colors.cyan,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _verificarAcesso();
              },
              child: const Text(
                "Entrar",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 222, 97),
                  fontSize: 22,
                ),
              ),
            ),
            Text(
              _texto,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 191, 255),
                fontSize: 16.0,
              ),
            ),
            TextField(
              controller: _numero1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Digite um número',
                hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                labelText: "Primeiro número",
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                ),
                hoverColor: Colors.cyan,
              ),
            ),
            TextField(
              controller: _numero2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Digite outro número',
                hintStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                labelText: "Segundo número",
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                ),
                hoverColor: Colors.cyan,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _somar();
              },
              child: const Text(
                "Somar",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 222, 97),
                  fontSize: 22,
                ),
              ),
            ),
            Text(
              _resultado,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 191, 255),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
