import 'dart:io';

void main() {
  print("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  List<String> palavras = frase.split(' ');

  for (int i = 0; i < palavras.length; i++) {
    if (i + 1 < palavras.length) {
      String palavra1 = palavras[i];
      String palavra2 = palavras[i + 1];

      String palavraCriptografada = '';

      int tamanhoMaiorPalavra =
          palavra1.length > palavra2.length ? palavra1.length : palavra2.length;

      for (int j = 0; j < tamanhoMaiorPalavra; j++) {
        if (j < palavra1.length) {
          palavraCriptografada += palavra1[j];
        }
        if (j < palavra2.length) {
          palavraCriptografada += palavra2[palavra2.length - 1 - j];
        }
      }

      palavras[i] = palavraCriptografada;
      palavras.removeAt(i + 1);
    } else {
      palavras[i] = palavras[i].split('').reversed.join();
    }
  }

  String fraseCriptografada = palavras.join(' ');
  print("Frase criptografada: $fraseCriptografada");
}
