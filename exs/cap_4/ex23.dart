import 'dart:io';

void main() {
  int codigo;
  int quantidade;
  double precoUnitario = 0;
  double precoTotal, precoFinal = 0;

  print("Digite o código do protudo: ");
  String? input = stdin.readLineSync();
  codigo = int.parse(input as String);

  print("Digite a quantidade comprada: ");
  input = stdin.readLineSync();
  quantidade = int.parse(input as String);

  if (codigo >= 1 && codigo <= 10) {
    precoUnitario = 10;
  } else if (codigo >= 11 && codigo <= 20) {
    precoUnitario = 15;
  } else if (codigo >= 21 && codigo <= 30) {
    precoUnitario = 20;
  } else if (codigo >= 31 && codigo <= 40) {
    precoUnitario = 30;
  }

  precoTotal = quantidade * precoUnitario;
  print("O Preço Total da Nota é de: R\$ $precoTotal");

  if (precoTotal < 250) {
    precoFinal = precoTotal - precoTotal * 0.05;
  } else if (precoTotal > 500) {
    precoFinal = precoTotal - precoTotal * 0.15;
  } else {
    precoFinal = precoTotal - precoTotal * 0.1;
  }

  print("Desconto de: ${precoFinal - precoTotal}");
  print("O Preço Final da Nota é de: R\$ $precoFinal");
}
