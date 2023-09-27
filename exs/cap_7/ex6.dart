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
  int j = 0;
  List<List<int>> matriz = List.generate(
      20, (row) => List<int>.generate(10, (col) => Random().nextInt(20)));

  List<int> vetorA = [];

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 20; j++) {
      resultado += matriz[j][i];
    }
    print("Resultado coluna[$i]: $resultado");
    vetorA.add(resultado);
    resultado = 0;
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 20; j++) {
      matriz[j][i] *= vetorA[i];
    }
  }

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print(' ');
  }
}
