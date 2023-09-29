import 'dart:io';

void main() {
  String frase;

  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  List<String> lista1 = frase.split('');
  List<String> duplicado =
      lista1.expand((elemento) => [elemento, elemento]).toList();

  print(duplicado.join(''));
}
