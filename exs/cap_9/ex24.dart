import 'dart:io';

void main() {
  String verbo;
  List<String> verboTratado = [];
  List<List<String>> terminacoes = [
    ['Eu', 'o'],
    ['Tu', 'es'],
    ['Ele', 'e'],
    ['Ela', 'e'],
    ['Nós', 'emos'],
    ['Vós', 'eis'],
    ['Eles', 'em'],
    ['Elas', 'em'],
  ];

  print("Digite um verbo terminado em ER: ");
  verbo = stdin.readLineSync()!.toLowerCase();
  if ((verbo[verbo.length - 2] != 'e') || (verbo[verbo.length - 1] != 'r')) {
    print("Verbo incorreto");
    exit(1);
  }

  for (int i = 0; i < verbo.length - 2; i++) {
    verboTratado.add(verbo[i]);
  }

  for (int i = 0; i < terminacoes.length; i++) {
    print("${terminacoes[i][0]} ${verboTratado.join('')}${terminacoes[i][1]}");
  }
}
