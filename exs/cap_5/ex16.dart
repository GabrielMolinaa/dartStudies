/*
Faça um programa que receba várias idades, calcule e mostre a média
das idades digitadas. Finalize digitando idade igual a zero;

*/

import 'dart:io';

void main() {
  int? numero;
  String? input;
  List<int> idades = [];
  print("Adicione as Idades: (para sair Digite 0)");
  while (numero != 0) {
    input = stdin.readLineSync();
    numero = int.parse(input as String);
    if (numero != 0) {
      idades.add(numero);
      print("Idade Adicionada [$numero] com Sucesso!");
    } else {
      print("Programa Finalizado");
    }
  }

  int soma = idades.reduce((value, element) => value + element);

  print("Quantidade de idades: ${idades.length}");
  print("Média das Idades Digitadas: ${soma / idades.length}");
}
