import 'dart:io';

void main() {
  double salario = 0, novoSalario = 0;

  print("Digite o salário do funcionário: ");
  String? input = stdin.readLineSync();
  salario = double.parse(input as String);

  if (salario <= 300) {
    novoSalario = salario + (salario * 0.15);
  } else if (salario > 900) {
    novoSalario = salario + (salario * 0);
  } else if (salario <= 900 && salario > 600) {
    novoSalario = salario + (salario * 0.05);
  } else {
    novoSalario = salario + (salario * 0.1);
  }

  print("Salário Antigo: $salario");
  print("Salario Reajustado em ${novoSalario - salario}: R\$${novoSalario}");
}
