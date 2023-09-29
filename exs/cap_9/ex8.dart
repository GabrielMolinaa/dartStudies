import 'dart:io';

void main() {
  String frase;
  String caractere;
  int cont = 0;

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  print("Digite um caractere para pesquisar na frase: ");
  caractere = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == caractere) {
      cont++;
    }
  }

  if (cont != 0) {
    print("Letra\tQuantidade na Frase");
    print("$caractere\t$cont");
  } else {
    print("Letra não existente!");
  }
}
