import 'dart:io';

void main() {
  int numero;

  print("Escreva um Número: ");
  String? input = stdin.readLineSync();
  numero = int.parse(input as String);

  for (int i = 0; i <= 10; i++) {
    print("$numero * $i = ${numero * i}");
  }
}
