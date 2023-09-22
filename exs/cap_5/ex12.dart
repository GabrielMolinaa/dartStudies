import 'dart:io';

bool verificaPrimo(int number) {
  if (number <= 1) {
    return false; // 0 e 1 não são números primos
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false; // Se for divisível por algum número, não é primo
    }
  }

  return true; // Se não for divisível por nenhum número, é primo
}

void main() {
  List<int> numeros = [];
  int contador = 0;
  for (int i = 0; i < 10; i++) {
    print("Digite o número ${i + 1}: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  numeros.forEach((element) {
    if (verificaPrimo(element)) contador++;
  });

  print("Foram digitados: $contador números primos!");
}
