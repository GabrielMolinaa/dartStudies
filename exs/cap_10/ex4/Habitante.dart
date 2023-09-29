class Habitante {
  late int _idade;
  late String _sexo;
  late double _rendaFamiliar;
  late int _numeroFilhos;
  late double _salario;

  Habitante(int idade, String sexo, double salario, double rendaFamiliar,
      int numeroFilhos) {
    this._idade = idade;
    this._sexo = sexo;
    this._salario = salario;
    this._numeroFilhos = numeroFilhos;

    this._rendaFamiliar = rendaFamiliar;
  }

  double get getSalario => _salario;
  double get getRendaFamiliar => _rendaFamiliar;
  int get getIdade => _idade;
  String get getSexo => _sexo;
  int get getNumeroFilhos => _numeroFilhos;
}
