import 'package:flutter_test/flutter_test.dart';
import 'package:novoprojeto/main.dart'; // Substitua pelo nome do seu aplicativo

void main() {
  testWidgets('verifica se o app exibe "Bem-vindo ao Flutter!"',
      (WidgetTester tester) async {
    // Construa o widget
    await tester.pumpWidget(MenuPrincipal());

    // Verifique se o texto "Bem-vindo ao Flutter!" está presente na tela
    expect(find.text('Bem-vindo ao Flutter!'), findsOneWidget);
  });
}
