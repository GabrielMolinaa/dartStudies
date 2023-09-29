import 'dart:io';

void main() {
  String frase;
  String caractere;
  late int index;

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  print("Digite um caractere para pesquisar na frase: ");
  caractere = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == caractere) {
      index = i;
      break;
    }
  }

  print("Caractere\t1° Posição na Frase");
  print("$caractere\t\t${index + 1}");
}
