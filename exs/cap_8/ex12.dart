import 'dart:io';

void potencia(double numero1, double numero2) {
  double resultado = 1;
  for (int i = 1; i <= numero2; i++) {
    resultado *= numero1;
  }

  print(resultado);
}

void main() {
  print("Digite o número 1:");
  double numero1 = double.parse(stdin.readLineSync()!);

  print("Digite o número 2: ");
  double numero2 = double.parse(stdin.readLineSync()!);
  potencia(numero1, numero2);
}
