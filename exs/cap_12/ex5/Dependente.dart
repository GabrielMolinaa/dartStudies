import 'Funcionario.dart';

class Dependente {
  late String _nomeDependente;
  late Funcionario _funcionario;

  Dependente(this._funcionario, this._nomeDependente);

  get nomeDependente => this._nomeDependente;
  set nomeDependente(value) => this._nomeDependente = value;

  get funcionario => this._funcionario;
  set funcionario(value) => this._funcionario = value;

  get numeroFuncionario => this._funcionario.numeroFuncionario;
}
