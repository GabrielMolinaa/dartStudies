import 'dart:io';

void main() {
  String frase;
  Map<String, String> numeros = {
    '0': 'ZERO',
    '1': 'UM',
    '2': 'DOIS',
    '3': 'TRÊS',
    '4': 'QUATRO',
    '5': 'CINCO',
    '6': 'SEIS',
    '7': 'SETE',
    '8': 'OITO',
    '9': 'NOVE'
  };
  print("Digite uma frase");
  frase = stdin.readLineSync()!;

  List<String> aux = frase.split(' ');

  for (int i = 0; i < aux.length; i++) {
    if (numeros.containsKey(aux[i])) {
      aux[i] = numeros[aux[i]].toString();
    }
  }
  print("Frase: $frase");
  print("Saída: ${aux.join(' ').toUpperCase()}");
}
