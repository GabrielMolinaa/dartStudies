import 'dart:io';

void main() {
  String frase;
  List<String> inverso = [];

  print("Digite uma frase:");
  frase = stdin.readLineSync()!;

  frase = frase.toUpperCase();
  frase = frase.replaceAll(RegExp('[^AEIOU ]'), '#');

  for (int i = frase.length - 1; i >= 0; i--) {
    inverso.add(frase[i]);
  }

  print(inverso.join(''));
}
