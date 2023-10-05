/*
Faça um programa que preencha uma matriz 3x5 com números inteiros, calcule e 
mostre a quantidade de elementos entre 15 e 20

*/

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      3, (row) => List<int>.generate(5, (col) => Random().nextInt(20)));

  for (var row in matriz) {
    for (var element in row) {
      if (element > 15 && element < 20) {
        print(element);
      }
    }
  }
}
