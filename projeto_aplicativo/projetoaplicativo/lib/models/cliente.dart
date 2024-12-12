class Cliente {
  final String id;
  String nome;
  String cpf;
  String endereco;
  String email;
  String senha;

  Cliente(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.endereco,
      required this.email,
      required this.senha});

  void acessarConta(String emailInput, String senhaInput) {
    if (email == emailInput && senha == senhaInput) {
      print("$nome acessou a conta.");
    } else {
      print("E-mail e/ou senha incorretos.");
    }
  }

  void editarDados(
      {String? nome,
      String? cpf,
      String? endereco,
      String? email,
      String? senha}) {
    if (nome != null) this.nome = nome;
    if (cpf != null) this.cpf = cpf;
    if (endereco != null) this.endereco = endereco;
    if (email != null) this.email = email;
    if (senha != null) this.senha = senha;
    print("Dados do cliente atualizados.");
  }

  void excluirConta() {
    print("Conta de $nome foi excluída.");
  }
}
