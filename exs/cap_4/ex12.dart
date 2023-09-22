import 'dart:io';

void main() {
  double salario = 0;

  print("Digite o salário bruto do funcionário: ");
  String? input = stdin.readLineSync();
  salario = double.parse(input as String);

  salario = (salario - (salario * 0.07));
  if (salario < 350) {
    salario += 100;
  } else if (salario > 900) {
    salario += 35;
  } else if (salario > 600 && salario <= 900) {
    salario += 50;
  } else {
    salario += 75;
  }

  print("O salário reajustado é de: R\$ $salario");
}
