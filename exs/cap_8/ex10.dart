import 'dart:io';

void sequencia(int numero) {
  double soma = 0;
  for (int i = 1; i <= numero; i++) {
    soma += 1 / i;
  }
  print(soma);
}

void main() {
  print("Digite um númeor positivo e maior que 1: ");
  int numero = int.parse(stdin.readLineSync()!);
  sequencia(numero);
}
