import 'Cliente.dart';
import 'Conta.dart';
import 'dart:io';

List<Cliente> adicionarCliente(List<Cliente> clientes) {
  int codigo;
  String nome;

  print("Digite o código do novo cliente;");
  codigo = int.parse(stdin.readLineSync()!);

  if (clientes.any((cliente) => cliente.codigoCliente == codigo)) {
    print("Cliente com código $codigo já cadastrado.");
    return clientes;
  } else {
    print("Digite o nome do novo Cliente: ");
    nome = stdin.readLineSync()!;
    clientes.add(Cliente(codigo, nome));
    print("Cliente cadastrado com sucesso.");
    return clientes;
  }
}

void adicionarConta(List<Cliente> clientes, List<Conta> contas) {
  int numeroConta;
  double valorCompra;
  int codigoCliente;

  print("Digite o código do cliente para criar a conta: ");
  codigoCliente = int.parse(stdin.readLineSync()!);

  if (clientes.any((cliente) => cliente.codigoCliente == codigoCliente)) {
    print("Digite o numero da conta: ");
    numeroConta = int.parse(stdin.readLineSync()!);

    print("Digite o valor da compra: ");
    valorCompra = double.parse(stdin.readLineSync()!);

    contas.add(Conta(numeroConta, valorCompra, codigoCliente));
    print("Conta cadastrada com sucesso.");
  } else {
    print(
        "Cliente com código $codigoCliente não encontrado. Não é possível cadastrar a conta.");
  }
}

void removerCliente(List<Cliente?> clientes, List<Conta> contas) {
  int codigo;

  print("Digite o código do cliente para remover: ");
  codigo = int.parse(stdin.readLineSync()!);

  try {
    var cliente = clientes.firstWhere(
        (cliente) => cliente?.codigoCliente == codigo,
        orElse: () => null);

    if (cliente != null) {
      if (contas.any((conta) => conta.codigoCliente == codigo)) {
        print("Exclusão não permitida. O cliente possui compras.");
      } else {
        clientes.remove(cliente);
        print("Cliente removido com sucesso.");
      }
    } else {
      print("Cliente com código $codigo não encontrado.");
    }
  } catch (e) {
    print('Cliente não encontrado');
  }
}

void main() {
  List<Cliente> clientes = [];
  List<Conta> contas = [];

  adicionarCliente(clientes);
  adicionarCliente(clientes);

  adicionarConta(clientes, contas);
  adicionarConta(clientes, contas);

  removerCliente(clientes, contas);
  removerCliente(clientes, contas);

  print(clientes);
  print(contas);
}
