class Habitante {
  late double _salario;
  late int _idade;
  late int _numeroFilhos;

  Habitante(double salario, int idade, int numeroFilhos) {
    this._salario = salario;
    this._idade = idade;
    this._numeroFilhos = numeroFilhos;
  }

  double get getSalario => _salario;
  int get getNumeroFilhos => _numeroFilhos;
  int get getIdade => _idade;
}
