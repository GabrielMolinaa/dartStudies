/*
Faça um programa que preencha um vetor com seis elementos numéricos inteiros,
calcule e mostre:

-> todos os números pares;
-> a quantidadede  números pares;
-> todos os números ímpares;
-> a quantidade de números ímpares;

*/

import 'dart:math';

void main() {
  int qtdPar = 0;
  int qtdImpar = 0;
  List<int> lista = List.generate(6, (index) => Random().nextInt(100));
  List<int> par = [];
  List<int> impar = [];
  print(lista);

  lista.forEach((element) {
    if (element % 2 == 0) {
      qtdPar++;
      par.add(element);
    } else {
      impar.add(element);
      qtdImpar++;
    }
  });

  print("\nNúmeros Pares: $par");
  print("Quantidade Par: $qtdPar\n");

  print("Números Ímpares: $impar");
  print("Quantidade Ímpar: $qtdImpar\n");
}
