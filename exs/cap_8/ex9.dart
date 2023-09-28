import 'dart:io';

int somaDivisores(int numero) {
  int soma = 0;

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      soma += i;
    }
  }
  return soma;
}

void main() {
  print("Digite um número inteiro positivo: ");
  int numero = int.parse(stdin.readLineSync()!);
  int soma = somaDivisores(numero);

  print("A soma dos divisores de $numero é: $soma");
}
