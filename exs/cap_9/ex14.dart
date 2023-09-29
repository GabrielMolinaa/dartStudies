import 'dart:io';

void main() {
  String frase;
  List<String> novaFrase = [];
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!.toLowerCase();

  for (int i = 0; i < frase.length; i++) {
    if (vogais.contains(frase[i])) {
      novaFrase.add(frase[i].toUpperCase());
    } else {
      novaFrase.add(frase[i]);
    }
  }

  print(novaFrase.join(''));
}
