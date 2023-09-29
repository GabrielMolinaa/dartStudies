import 'dart:io';

void main() {
  String frase;
  List<String> cont;
  Map<String, int> contagem = {};
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!.toLowerCase();

  cont = frase.split(' ');

  for (var palavra in cont) {
    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  print("Palavra\t\tQuantidade de vezes que aparece na frase");
  contagem.forEach((elemento, quantidade) {
    if (quantidade > 1) {
      print("$elemento\t\t$quantidade");
    } else {
      print("$elemento\t\t$quantidade");
    }
  });
}
