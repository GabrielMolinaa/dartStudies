import 'dart:io';

void main() {
  String frase;
  int contLetras = 0, contNumeros = 0, contEspacos = 0;

  print("Digite uma frase:");
  frase = stdin.readLineSync()!.toUpperCase();

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == ' ') {
      contEspacos++;
    } else if (frase[i].contains(RegExp('[A-Z]'))) {
      contLetras++;
    } else {
      contNumeros++;
    }
  }
  print("Quantidade de Letras: $contLetras");
  print("Quantidade de Números: $contNumeros");
  print("Quantidade de Espaços: $contEspacos");
}
