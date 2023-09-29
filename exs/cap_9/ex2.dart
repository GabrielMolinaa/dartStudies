import 'dart:io';

void main() {
  String frase;
  List<String> aux = [];

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == ' ') {
      aux.add('\n');
    } else {
      aux.add(frase[i]);
    }
  }

  print(aux.join(''));
}
