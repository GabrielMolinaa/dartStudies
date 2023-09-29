import 'dart:io';

void main() {
  String frase;
  List<String> fraseCripto = [];
  List<String> fraseDescriptografada = [];
  List<String> vogais = [];
  List<int> posicoes = [];
  List<String> gabarito = ['a', 'e', 'i', 'o', 'u'];

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!.toLowerCase();

  for (int i = 0; i < frase.length; i++) {
    if (gabarito.contains(frase[i])) {
      vogais.add(frase[i]);
      posicoes.add(i);
    } else {
      fraseCripto.add(frase[i]);
    }
  }
  print("Frase Criptografada: ${fraseCripto.join('')}");
  for (int i = 0; i < frase.length; i++) {
    if (posicoes.contains(i)) {
      fraseDescriptografada.add(vogais.removeAt(0));
    } else {
      fraseDescriptografada.add(fraseCripto.removeAt(0));
    }
  }
  print("Frase Descriptografada: ${fraseDescriptografada.join('')}");
}
