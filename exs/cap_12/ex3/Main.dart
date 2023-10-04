import 'Cliente.dart';
import 'Produto.dart';
import 'Compra.dart';
import 'dart:io';

void main() {
  List<Produto> produtos = [];
  List<Cliente> clientes = [];
  List<Compra> compras = [];

  print("\nCadastro de Produtos: ");
  for (int i = 0; i < 3; i++) {
    print("Digite o código do produto: ");
    int codigoProduto = int.parse(stdin.readLineSync()!);

    print("Digite o valor do produto entre [R\$20 e R\$350]: ");
    double valorProduto = double.parse(stdin.readLineSync()!);

    if (valorProduto > 20 && valorProduto < 350) {
      produtos.add(Produto(codigoProduto, valorProduto));
    } else {
      print("Valor Inválido: Valor deve ser entre R\$20 e R\$350");
    }
  }

  print("\n\nCadastro de Clientes: ");
  for (int i = 0; i < 3; i++) {
    print("Digite o código do Cliente: ");
    int codigoCliente = int.parse(stdin.readLineSync()!);

    print("Digite o nome do cliente: ");
    String nomeCliente = stdin.readLineSync()!;

    print("Digite o Sexo do Cliente [M/F]");
    String sexoCliente = stdin.readLineSync()!;
    if (sexoCliente == 'M' ||
        sexoCliente == 'm' ||
        sexoCliente == 'F' ||
        sexoCliente == 'f') {
      clientes.add(Cliente(codigoCliente, nomeCliente, sexoCliente));
    } else {
      print("Sexo Inválido!");
    }
  }

  print("\n\nCompra: ");
  print("Informe o código do produto: ");
  int codigoProduto = int.parse(stdin.readLineSync()!);

  print("Informe o código do cliente: ");
  int codigoCliente = int.parse(stdin.readLineSync()!);

  print("Informe a quantidade de produtos comprados: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  compras.add(
      Compra(codigoProduto, codigoCliente, quantidade, clientes, produtos));

  compras.forEach((element) {
    print("Compra Valor Total - R\$${element.getValorTotal}");
  });
}
