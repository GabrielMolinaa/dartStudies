// Faça um programa que receba dois números e execute as operações
// listadas a seguir, de acordo com a escolha do usuário
// 1 - Média entre os números digitados, 2- Diferença do maior pelo menor
// 3 - Produto entre os números digitados, 4 - Divisão do primeiro pelo segundo

import 'dart:io';

void media(double num1, double num2) {
  double media = (num1 + num2) / 2;
  print("A média dos dois números é: $media");
}

void diferenca(double num1, double num2) {
  double diferenca = 0;

  if (num1 > num2) {
    diferenca = num1 - num2;
  } else {
    diferenca = num2 - num1;
  }
  print("A diferença do maior pelo menor é:  $diferenca");
}

void produto(double num1, double num2) {
  double produto = num1 * num2;
  print("O Produto entre os números é: $produto");
}

void divisao(double num1, double num2) {
  double divisao = 0;

  if (num2 == 0) {
    print("Não é possível dividir um número por 0");
  } else {
    divisao = num1 / num2;
  }

  print("A Divisão entre os números é: $divisao");
}

void menu(double num1, double num2) {
  int escolha;
  print(
      "1 - Média entre os números digitados;\n2 - Diferença do maior pelo menor;\n3 - Produto entre os números digitados;\n4 - Divisão do primeiro pelo segundo;\nEscolha uma Opção: ");
  String? input = stdin.readLineSync();
  escolha = int.parse(input as String);

  switch (escolha) {
    case 1:
      media(num1, num2);
    case 2:
      diferenca(num1, num2);
    case 3:
      produto(num1, num2);
    case 4:
      divisao(num1, num2);
    default:
      print("Opção inválida");
  }
}

void main() {
  double num1 = 0;
  double num2 = 0;

  print("Digite o número 1: ");
  String? input = stdin.readLineSync();
  num1 = double.parse(input as String);

  print("Digite o número 2: ");
  input = stdin.readLineSync();
  num2 = double.parse(input as String);

  menu(num1, num2);
}
