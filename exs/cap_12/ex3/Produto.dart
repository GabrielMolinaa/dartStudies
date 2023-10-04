class Produto {
  late int numeroProduto;
  late double precoProduto;
  late double desconto;

  Produto(int numeroProduto, double precoProduto) {
    this.numeroProduto = numeroProduto;
    this.precoProduto = precoProduto;
    calculaDesconto();
  }

  get getNumeroProduto => this.numeroProduto;
  set setNumeroProduto(numeroProduto) => this.numeroProduto = numeroProduto;

  get getPrecoProduto => this.precoProduto;
  set setPrecoProduto(precoProduto) => this.precoProduto = precoProduto;

  get getDesconto => this.desconto;
  set setDesconto(desconto) => this.desconto = desconto;

  void calculaDesconto() {
    if (this.precoProduto > 100) {
      this.desconto = 0.15;
    } else {
      this.desconto = 0.05;
    }
  }
}
