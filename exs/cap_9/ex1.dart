import 'dart:io';

void main() {
  String frase;
  print("Digite uma frase:");
  frase = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    stdout.write("${frase[i]}!");
  }
}
