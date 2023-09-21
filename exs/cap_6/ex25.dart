/*
Faça um programa que leia um vetor com quinze posições para números inteiros.
Depois da leitura, divida todos os seus elementos pelo maior valor do vetor.
Mostre o vetor após os cálculos.

*/

import 'dart:math';

void main() {
  List<int> numeros = List.generate(15, (index) => Random().nextInt(100));
  int maiorValor = 0;
  double resultado = 0;
  print(numeros);

  numeros.sort();
  maiorValor = numeros[numeros.length - 1];

  numeros.forEach((element) {
    resultado = element / maiorValor;
    numeros[numeros.indexOf(element)] = resultado.round();
  });

  print(numeros);
  print("Os números foram arredondados");
}
