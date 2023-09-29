import 'dart:io';

void main() {
  print("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  List<String> palavras = frase.split(' ');

  for (int i = 0; i < palavras.length; i++) {
    String palavra = palavras[i];
    int comprimento = palavra.length;

    int indiceUltimaMetade = (comprimento / 2).floor();

    String palavraCriptografada = palavra.substring(0, indiceUltimaMetade) +
        '?' * (comprimento - indiceUltimaMetade);

    palavras[i] = palavraCriptografada;
  }

  String fraseCriptografada = palavras.join(' ');
  print("Frase criptografada: $fraseCriptografada");
}
