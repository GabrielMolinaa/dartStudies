import 'dart:io';

void main() {
  double salario = 0;

  print("Digite o salário do funcionário: ");
  String? input = stdin.readLineSync();
  salario = double.parse(input as String);

  if (salario > 500) {
    print("O salário reajustado é: ${salario += (salario * 0.3)}");
  } else {
    print("Salário sem direito ao reajuste");
  }
}
