class Pessoa {
  late String nome;
  late int idade;
  int diferenca = 2050 - DateTime.now().year;

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  String get getNome => this.nome;
  int idadeMeses() {
    int meses = idade * 12;
    return meses;
  }

  int idadeFutura() {
    return (this.idade + diferenca);
  }
}
