import 'vendedor.dart';

List<Vendedor> preencheVendedores() {
  Map<int, double> vendas = {};
  List<Vendedor> vendedores = [];

  for (int i = 0; i < 2; i++) {
    print("Informe o código do ${i + 1}° Vendedor: ");
    int codigo = int.parse(stdin.readLineSync()!);
    if (verificaCodigoVendedor(vendedores, codigo)) {
      for (int j = 0; j < 12; j++) {
        print("Informe as vendas do ${i + 1}° Vendedor no mês ${j + 1}: ");
        vendas[j + 1] = double.parse(stdin.readLineSync()!);
      }
      vendedores.add(Vendedor(codigo, vendas));
    } else {
      print("Erro: Código já existente");
      exit(1);
    }
  }
  return vendedores;
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

class Loja {
  String nome;
  List<Vendedor> vendedores = preencheVendedores();
  Loja(this.nome);
}
