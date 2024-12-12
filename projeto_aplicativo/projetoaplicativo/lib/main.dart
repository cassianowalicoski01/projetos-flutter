import 'package:flutter/material.dart';
import 'screens/menu_screen.dart';
import 'screens/produtos_screen.dart';
import 'screens/clientes_screen.dart';
import 'screens/carrinho_screen.dart';
import 'screens/painel_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Gerenciamento',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFF121212),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        cardColor: Color(0xFF1E1E1E),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.tealAccent, // Cor do botão
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF181818),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/produtos': (context) => ProdutosScreen(),
        '/clientes': (context) => ClientesScreen(),
        '/carrinho': (context) => CarrinhoScreen(),
        '/painel': (context) => PainelScreen(),
      },
    );
  }
}
