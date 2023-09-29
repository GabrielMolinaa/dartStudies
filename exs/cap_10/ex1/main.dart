import 'dart:io';
import 'vendedor.dart';

void menu() {
  print("1. Cadastrar vendedor.");
  print("2. Cadastrar venda.");
  print("3. Consultar as vendas de um funcionário em determinado mês.");
  print("4. Consultar o total das vendas de determinado vendedor.");
  print("5. Mostrar o número do vendedor que mais vendeu em determinado mês.");
  print("6. Mostrar o número do mês com mais vendas.");
  print("7. Finalizar o programa.\n");
  print("Escolha uma opção:");
}

bool verificaCodigoVendedor(List<Vendedor> vendedores, int codigoNovo) {
  List<int> codigos = [];

  vendedores.forEach((element) {
    codigos.add(element.getCodigo);
  });

  if (codigos.contains(codigoNovo)) {
    return false;
  } else {
    return true;
  }
}

Vendedor cadastraVendedor(List<Vendedor> vendedores) {
  Map<int, double> vendas = {};
  print("Informe o código do novo Vendedor: ");
  int codigo = int.parse(stdin.readLineSync()!);
  if (verificaCodigoVendedor(vendedores, codigo)) {
    for (int j = 0; j < 12; j++) {
      print("Informe as vendas do Vendedor no mês ${j + 1}: ");
      vendas[j + 1] = double.parse(stdin.readLineSync()!);
    }
    return Vendedor(codigo, vendas);
  } else {
    print("Erro ao cadastrar Vendedor");
    exit(1);
  }
}

void cadastraVenda(int codigo, int mes) {}

void main() {
  late int opcao;
  Loja loja = Loja();
  Loja.preencheVendedores();
  while (true) {
    menu();
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        vendedores.add(cadastraVendedor(vendedores));
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
      case 7:
        print("Finalizando...");
        exit(1);
      default:
        print("Opção inválida");
    }
  }
}
