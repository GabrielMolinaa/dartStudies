import 'Cliente.dart';
import 'Produto.dart';

class Compra {
  late int numeroProduto;
  late int numeroCliente;
  late int quantidade;
  late double valorTotal;

  List<Cliente> clientes = [];
  List<Produto> produtos = [];

  Compra(int numeroProduto, int numeroCliente, int quantidade,
      List<Cliente> clientes, List<Produto> produtos) {
    this.numeroCliente = numeroCliente;
    this.numeroProduto = numeroProduto;
    this.quantidade = quantidade;
    this.clientes = clientes;
    this.produtos = produtos;
    calculaValorTotal();
  }

  void calculaValorTotal() {
    double desconto = 0;
    double precoProduto = 0;
    clientes.forEach((element) {
      if (this.numeroCliente == element.getNumeroCliente) {
        desconto = element.getDesconto;
      }
    });

    produtos.forEach((element) {
      if (this.numeroProduto == element.getNumeroProduto) {
        precoProduto = element.getPrecoProduto;
        desconto += element.getDesconto;
      }
    });

    this.valorTotal = (precoProduto - (precoProduto * desconto)) * quantidade;
  }

  double get getValorTotal => this.valorTotal;
}
