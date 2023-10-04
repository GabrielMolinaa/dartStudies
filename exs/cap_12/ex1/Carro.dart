class Carro {
  late String placa;
  late DateTime anoFabricacao;
  DateTime anoAtual = DateTime.now();
  late double imposto;

  Carro(String placa, DateTime anoFabricacao) {
    this.placa = placa;
    this.anoFabricacao = anoFabricacao;
  }

  String get getPlaca => this.placa;
  set setPlaca(placa) => this.placa = placa;

  DateTime get getAnoFabricacao => this.anoFabricacao;
  set setAnoFabricacao(anoFabricacao) => this.anoFabricacao = anoFabricacao;

  double get getImposto => this.imposto;

  void calculaImposto() {
    if (this.anoFabricacao.year <= this.anoAtual.year) {
      if (this.anoFabricacao.year == this.anoAtual.year) {
        this.imposto = 500;
        //print("Valor Imposto: R\$$imposto");
      } else {
        if (anoAtual.year - this.anoFabricacao.year > 10) {
          //print("Livre de Imposto");
          this.imposto = 0;
        } else {
          this.imposto = 500 -
              (100 *
                  (anoAtual.year.toDouble() -
                      this.anoFabricacao.year.toDouble()));
          if (imposto < 100) {
            this.imposto = 100;
          }
          //print("Valor Imposto: R\$$imposto");
        }
      }
    } else {
      print("O carro é do Futuro?");
    }
  }

  double somarImposto(double soma) {
    soma += this.imposto;
    return soma;
  }

  bool insento() {
    if (imposto == 0) {
      return true;
    } else {
      return false;
    }
  }
}
