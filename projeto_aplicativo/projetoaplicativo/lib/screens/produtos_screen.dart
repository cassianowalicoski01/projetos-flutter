import 'package:flutter/material.dart';

class ProdutosScreen extends StatefulWidget {
  @override
  _ProdutosScreenState createState() => _ProdutosScreenState();
}

class _ProdutosScreenState extends State<ProdutosScreen> {
  List<String> produtos = ['Produto 1', 'Produto 2', 'Produto 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerenciar Produtos"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: _addProduto,
              icon: Icon(Icons.add),
              label: Text("Adicionar Produto"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 0, 255),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  return _buildProductCard(produtos[index], index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(String produto, int index) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      shadowColor: Colors.black54,
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        title: Text(
          produto,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Icon(Icons.shopping_cart, size: 30, color: const Color.fromARGB(255, 25, 0, 255)),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: const Color.fromARGB(255, 255, 0, 0)),
          onPressed: () => _removeProduto(index),
        ),
        tileColor: Color(0xFF2C2C2C),
        onTap: () => _editProduto(index),
      ),
    );
  }

  void _addProduto() {
    setState(() {
      produtos.add('Novo Produto');
    });
  }

  void _removeProduto(int index) {
    setState(() {
      produtos.removeAt(index);
    });
  }

  void _editProduto(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditarProdutoScreen(produto: produtos[index]),
      ),
    );
  }
}

class EditarProdutoScreen extends StatelessWidget {
  final String produto;
  EditarProdutoScreen({required this.produto});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: produto);
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Produto"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Nome do Produto',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
              ),
              style: TextStyle(color: Colors.white),
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
