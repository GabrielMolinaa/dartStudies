import 'dart:io';

void main() {
  double custoFabrica = 0, precoCarro = 0;

  print("Digite o Custo de fábrica do carro: ");
  String? input = stdin.readLineSync();
  custoFabrica = double.parse(input as String);

  if (custoFabrica < 12000) {
    precoCarro = custoFabrica + (custoFabrica * 0.5);
  } else if (custoFabrica > 25000) {
    precoCarro = custoFabrica + (custoFabrica * 0.15) + (custoFabrica * 0.2);
  } else {
    precoCarro = custoFabrica + (custoFabrica * 0.1) + (custoFabrica * 0.15);
  }

  print("O Preço final para o consumidor é de: R\$ ${precoCarro}");
}
