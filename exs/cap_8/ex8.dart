import 'dart:io';

void fatorial(int numero) {
  int resultado = 1;
  for (int i = 1; i <= numero; i++) {
    resultado *= i;
  }
  print("Fatorial de [$numero]: $resultado");
}

void main() {
  print("Digite um número inteiro positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  fatorial(numero);
}
