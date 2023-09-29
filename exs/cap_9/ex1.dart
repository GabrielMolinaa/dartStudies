import 'dart:io';

void main() {
  String frase;
  print("Digite uma frase:");
  frase = stdin.readLineSync()!;

  frase = frase.toUpperCase();
  frase = frase.replaceAll(RegExp('[^AEIOU ]'), '#');
  List<String> inverso = [];

  for (int i = frase.length - 1; i >= 0; i--) {
    inverso.add(frase[i]);
  }

  print(inverso.join(''));
}
