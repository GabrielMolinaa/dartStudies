import 'dart:io';

void main() {
  String frase;

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!.trim();

  print(frase);
}
