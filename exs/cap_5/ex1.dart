/*
Faça um programa que leia cinco grupos de quatro valores (A,B,C,D) e mostre-os
na ordem lida. Em seguida, organize-os em ordem crescende e decrescente.

*/

import 'dart:io';

void main() {
  List<List<int>> grupos = [];
  String? input;
  int valor;

  for (int i = 0; i < 5; i++) {
    print("Digite [4] valores INTEIROS para o ${i + 1} grupo: ");
    List<int> elemento = [];
    for (int j = 0; j < 4; j++) {
      print("Valor ${j + 1} do grupo ${i + 1}");
      input = stdin.readLineSync();
      valor = int.parse(input as String);
      elemento.add(valor);
    }
    grupos.add(elemento);
  }

  print("Ordenação Crescente:");
  for (int i = 0; i < grupos.length; i++) {
    grupos[i].sort();
  }
  print(grupos);

  print("Ordenação Decrescente:");
  for (int i = 0; i < grupos.length; i++) {
    grupos[i].sort((b, a) => a.compareTo(b));
  }
  print(grupos);
}
