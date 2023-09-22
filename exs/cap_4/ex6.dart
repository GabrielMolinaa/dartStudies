import 'dart:io';
import 'dart:math';

void main() {
  double num1 = 0, num2 = 0;
  int opcao;
  String? input;

  print("Digite o primeiro número: ");
  input = stdin.readLineSync();
  num1 = double.parse(input as String);

  print("Digite o segundo número: ");
  input = stdin.readLineSync();
  num2 = double.parse(input as String);

  print("Escolha uma opção: ");
  print(
      "1 - O primeiro número elevado ao segundo número\n2 - Raiz quadrada de cada um dos números\n3 - Raiz cúbica de cada um dos números");
  input = stdin.readLineSync();
  opcao = int.parse(input as String);

  switch (opcao) {
    case 1:
      print(
          "O primeiro número [$num1] elevado ao segundo[$num2] é: ${pow(num1, num2)}");
      break;

    case 2:
      print("A raiz quadrada do primeiro número [$num1] é: ${sqrt(num1)} ");
      print("A raiz quadrada do segundo número [$num2] é: ${sqrt(num2)}");
      break;

    case 3:
      print(
          "A raiz cúbica do primeiro número [$num1] é: ${pow(num1, (1 / 3))} ");
      print("A raiz cúbica do segundo número [$num2] é: ${pow(num2, (1 / 3))}");
      break;

    default:
      print("Opção Inválida");
      break;
  }
}
