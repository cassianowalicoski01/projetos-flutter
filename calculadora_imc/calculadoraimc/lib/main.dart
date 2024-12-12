import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculadora',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  String _resultado_imc = "Resultado...";
  String _resultado_situacao = "";
  String _situacao = "";
  double _imc = 0;

  _calcularIMC() {
    setState(() {
      _imc = double.parse(_pesoController.text) / (double.parse(_alturaController.text) * double.parse(_alturaController.text));
      switch (_imc) {
        case < 18.5:
          _situacao = "Abaixo do peso";
        case < 24.9:
          _situacao = "Peso normal";
        case < 29.9:
          _situacao = "Sobrepeso";
        case < 34.9:
          _situacao = "Obesidade grau I";
        case < 39.9:
          _situacao = "Obesidade grau II ou severa";
        case > 40:
          _situacao = "Obesidade grau III ou mórbida";
      }
      _resultado_imc = "Seu IMC é ${_imc.toStringAsFixed(2)}";
      _resultado_situacao = _situacao;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 42, 42),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.calculate,
                color: Color.fromARGB(255, 160, 145, 145),
                size: 60.0,
              ),
              const Text(
                "CALCULADORA IMC",
                style: TextStyle(
                  color: Color.fromARGB(255, 160, 145, 145),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50.0),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 131, 131),
                  fontSize: 20.0,
                  ),
                controller: _pesoController,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Seu peso em kg (ex: 88.9)...',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 122, 117, 117),
                    fontSize: 16,
                  ),
                  labelText: "Peso",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 119, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  hoverColor: Colors.cyan,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 131, 131),
                  fontSize: 20.0,
                  ),
                controller: _alturaController,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Sua altura em metros (ex: 1.80)...',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 122, 117, 117),
                    fontSize: 16,
                  ),
                  labelText: "Altura",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 119, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  hoverColor: Colors.cyan,
                ),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 119, 255),
                  elevation: 0,
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  side: const BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 0, 0, 0)
                  )),
                onPressed: () {
                  _calcularIMC();
                },
                child: const Text(
                'Calcular',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                _resultado_imc,
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 117, 117),
                  fontSize: 25.0,
                ),
              ),
              Text(
                _resultado_situacao,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 119, 255),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
