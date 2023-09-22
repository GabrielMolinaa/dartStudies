import 'dart:io';

void main() {
  double salario = 0;

  print("Digite o salário do funcionário: ");
  String? input = stdin.readLineSync();
  salario = double.parse(input as String);

  if (salario < 300) {
    salario += (salario * 0.5);
  } else if (salario > 1000) {
    salario += (salario * 0.05);
  } else if (salario > 800 && salario <= 1000) {
    salario += (salario * 0.1);
  } else if (salario > 700 && salario <= 800) {
    salario += (salario * 0.2);
  } else if (salario > 500 && salario <= 700) {
    salario += (salario * 0.3);
  } else {
    salario += (salario * 0.4);
  }

  print("O salário reajustado é de: R\$ $salario ");
}
