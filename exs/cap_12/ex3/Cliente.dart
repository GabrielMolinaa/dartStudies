class Cliente {
  late int numeroCliente;
  late String nomeCliente;
  late String sexoCliente;
  late double desconto;

  Cliente(int numeroCliente, String nomeCliente, String sexoCliente) {
    this.numeroCliente = numeroCliente;
    this.nomeCliente = nomeCliente;
    this.sexoCliente = sexoCliente;
    calculaDesconto();
  }

  get getNumeroCliente => this.numeroCliente;
  set setNumeroCliente(numeroCliente) => this.numeroCliente = numeroCliente;

  get getNomeCliente => this.nomeCliente;
  set setNomeCliente(nomeCliente) => this.nomeCliente = nomeCliente;

  get getSexoCliente => this.sexoCliente;
  set setSexoCliente(sexoCliente) => this.sexoCliente = sexoCliente;

  get getDesconto => this.desconto;
  set setDesconto(desconto) => this.desconto = desconto;

  void calculaDesconto() {
    if (this.sexoCliente == 'F' || this.sexoCliente == 'f') {
      this.desconto = 0.05;
    } else {
      this.desconto = 0;
    }
  }
}
