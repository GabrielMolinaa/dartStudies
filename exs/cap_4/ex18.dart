import 'dart:io';

void main() {
  int idade = 0;

  print("Digite sua idade: ");
  String? input = stdin.readLineSync();
  idade = int.parse(input as String);

  if (idade >= 18) {
    print("Você é maior de idade! Pode ser Preso! ;)");
  } else {
    print("Você ainda é bebê!");
  }
}
