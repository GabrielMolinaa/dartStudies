import 'dart:io';

void main() {
  double num1 = 0, num2 = 0, num3 = 0;
  List lista = [];

  print("Digite o primeiro número: ");
  String? input = stdin.readLineSync();
  num1 = double.parse(input as String);
  lista.add(num1);

  print("Digite o segundo número: ");
  input = stdin.readLineSync();
  num2 = double.parse(input as String);
  lista.add(num2);

  print("Digite o terceiro número: ");
  input = stdin.readLineSync();
  num3 = double.parse(input as String);
  lista.add(num3);

  lista.sort();
  print("O maior número é: ${lista[lista.length - 1]}");
}
