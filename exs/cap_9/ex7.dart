import 'dart:io';

void main() {
  String frase;
  List<String> contador = [];

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    if (!contador.contains(frase[i])) {
      contador.add(frase[i]);
    }
  }

  print(contador);
  print("A quantidade de letras diferente é: ${contador.length}");
}
