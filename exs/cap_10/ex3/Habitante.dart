class Habitante {
  late String _sexo;
  late double _altura;
  late int _idade;
  late String _corOlhos;

  Habitante(String sexo, double altura, int idade, String corOlhos) {
    this._sexo = sexo;
    this._altura = altura;
    this._idade = idade;
    this._corOlhos = corOlhos;
  }

  get getAltura => this._altura;
  get getIdade => this._idade;
  get getCorOlhos => this._corOlhos;
  get getSexo => this._sexo;
}
