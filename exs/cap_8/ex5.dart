import 'dart:io';

void verificaNumero(double numero) {
  if (numero >= 0) {
    print("O Número [$numero] é positivo");
  } else {
    print("O Número [$numero] é negativo");
  }
}

void main() {
  print("Digite um número: ");
  double numero = double.parse(stdin.readLineSync()!);
  verificaNumero(numero);
}
