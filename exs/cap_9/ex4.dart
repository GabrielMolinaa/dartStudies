import 'dart:io';

int qtdPalavras(String frase) {
  int cont = 1;
  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == ' ' && frase[i + 1] != '\n') {
      cont++;
    }
  }
  return cont;
}

void main() {
  String frase;
  int quantidade = 0;
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!.trim();

  frase = frase.replaceAll(RegExp(r'\s+'), ' ');

  quantidade = qtdPalavras(frase);
  print("A quantidade de palavras é: $quantidade");
}
