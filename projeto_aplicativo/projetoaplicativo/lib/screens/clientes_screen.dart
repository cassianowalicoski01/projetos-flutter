import 'package:flutter/material.dart';

class ClientesScreen extends StatefulWidget {
  @override
  _ClientesScreenState createState() => _ClientesScreenState();
}

class _ClientesScreenState extends State<ClientesScreen> {
  List<String> clientes = ['Cliente 1', 'Cliente 2', 'Cliente 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerenciar Clientes"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addCliente,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(clientes[index]),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _removeCliente(index),
              ),
              onTap: () => _editCliente(index),
            ),
          );
        },
      ),
    );
  }

  void _addCliente() {
    setState(() {
      clientes.add('Novo Cliente');
    });
  }

  void _removeCliente(int index) {
    setState(() {
      clientes.removeAt(index);
    });
  }

  void _editCliente(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditarClienteScreen(cliente: clientes[index]),
      ),
    );
  }
}

class EditarClienteScreen extends StatelessWidget {
  final String cliente;
  EditarClienteScreen({required this.cliente});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: cliente);
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Cliente"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Nome do Cliente'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, controller.text);
              },
              child: Text("Salvar Alterações"),
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
}
