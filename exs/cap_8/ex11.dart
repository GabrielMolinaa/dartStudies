import 'dart:io';
import 'dart:math';

void somaS(int numero) {
  double soma = 0;
  for (int i = 1; i <= numero; i++) {
    soma += ((pow(i, 2) + 1) / (i + 3));
  }
  print(soma);
}

void main() {
  print("Digite um valor inteiro e positivo");
  int numero = int.parse(stdin.readLineSync()!);

  somaS(numero);
}
