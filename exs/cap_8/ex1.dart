import 'dart:io';

int soma(int n) {
  int resultado = 0;

  for (int i = 0; i <= n; i++) {
    resultado += i;
  }

  return resultado;
}

void main() {
  late int numero;
  print("Digite um número inteiro positivo: ");
  numero = int.parse(stdin.readLineSync()!);

  print(soma(numero));
}
