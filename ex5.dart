// Faça um programa que receba dois números e execute as operações
// listadas a seguir, de acordo com a escolha do usuário
// 1 - Média entre os números digitados, 2- Diferença do maior pelo menor
// 3 - Produto entre os números digitados, 4 - Divisão do primeiro pelo segundo

import 'dart:io';

void menu() {}

void main() {
  double num1 = 0;
  double num2 = 0;

  print("Digite o número 1: ");
  String? input = stdin.readLineSync();
  num1 = double.parse(input as String);

  print("Digite o númeor 2: ");
  input = stdin.readLineSync();
  num2 = double.parse(input as String);
}
