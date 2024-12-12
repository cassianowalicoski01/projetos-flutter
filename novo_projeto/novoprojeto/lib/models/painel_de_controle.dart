class PainelDeControle {
  String email;
  String senha;

  PainelDeControle({required this.email, required this.senha});

  String acessarPainelDeControle() {
    if (email == "usuario@exemplo.com" && senha == "123456") {
      return "Acesso concedido ao Painel de Controle!";
    } else {
      return "Falha no acesso. Verifique o email e/ou a senha.";
    }
  }
}
