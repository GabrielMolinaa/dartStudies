/*
Faça um programa que leia um vetor com quinze posições para números inteiros.
Crie, a seguir, um vetor resultante que contenha todos os números primos do vetor
digitado. Escreva o vetor resultante;

*/

import 'dart:math';

bool verificaPrimo(int num) {
  for (int divisor = 2; divisor < num; divisor++)
    if (num % divisor == 0) return false;
  return true;
}

void main() {
  List<int> numeros = List.generate(15, (index) => Random().nextInt(100));
  List<int> resultante = [];

  numeros.forEach((element) {
    if (verificaPrimo(element) == true) {
      resultante.add(element);
    }
  });

  print(numeros);
  print(resultante);
}
