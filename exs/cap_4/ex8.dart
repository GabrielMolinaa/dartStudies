import 'dart:io';

void main() {
  double salario = 0;

  print("Digite o salário do funcionário: ");
  String? input = stdin.readLineSync();
  salario = double.parse(input as String);

  if (salario < 300) {
    salario += (salario * 0.35);
  } else {
    salario += (salario * 0.15);
  }

  print("Salario Reajustado: ${salario}");
}
