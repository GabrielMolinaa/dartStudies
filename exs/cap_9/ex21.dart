import 'dart:io';

void main() {
  String frase;
  List<String> aux = [];
  String auxiliar;
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  aux = frase.split(' ');

  auxiliar = aux[0];
  aux[0] = aux[aux.length - 1];
  aux[aux.length - 1] = auxiliar;
  print(aux.join(' '));
}
