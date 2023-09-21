/*
Faça um programa que preencha uma matriz 20x10 com números inteiros e some cada
uma das colunas, armazenando o resultado da soma em um vetor. A seguir, o
programa deverá multiplicar cada elemento da matriz pela soma da coluna e mostrar
a matriz resultante.

*/

import 'dart:math';
import 'dart:io';

void main() {
  int resultado = 0;
  List<List<int>> matriz = List.generate(
      2, (row) => List<int>.generate(2, (col) => Random().nextInt(20)));

  for (var row in matriz) {
    for (var element in row) {
      stdout.write(" $element ");
      resultado += element;
    }
    print('');
  }

  print(resultado);
}
