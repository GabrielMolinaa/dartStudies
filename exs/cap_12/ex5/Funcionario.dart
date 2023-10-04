class Funcionario {
  late int _numeroFuncionario;
  late String _nomeFuncionario;
  late String _cargo;
  late double _salario;

  Funcionario(this._numeroFuncionario, this._nomeFuncionario, this._cargo,
      this._salario);

  int get numeroFuncionario => this._numeroFuncionario;
  set setNumeroFuncionario(int value) => this._numeroFuncionario = value;

  String get nomeFuncionario => this._nomeFuncionario;
  set setNomeFuncionario(String value) => this._nomeFuncionario = value;

  String get cargo => this._cargo;
  set setCargo(String value) => this._cargo = value;

  double get salario => this._salario;
  setSalario(double value) {
    this._salario = value;
  }
}
