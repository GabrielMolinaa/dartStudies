import 'dart:io';

void main() {
  String frase;
  int repeticoes;
  List<String> novaFrase = [];
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  print("Digite o número de repetições [1-5]: ");
  repeticoes = int.parse(stdin.readLineSync()!);
  if (repeticoes > 5) {
    print("Numero inválido");
    exit(1);
  }

  for (int i = 0; i < repeticoes; i++) {
    novaFrase.add(frase);
  }

  print("Frase: $frase");
  print("Nova Frase: ${novaFrase.join(' ')}");
}
