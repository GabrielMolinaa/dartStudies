import 'dart:io';

void mediaAritmetica() {
  double nota1 = 0, nota2 = 0;
  print("Digite a nota 1: ");
  nota1 = double.parse(stdin.readLineSync()!);

  print("Digite a nota 2: ");
  nota2 = double.parse(stdin.readLineSync()!);

  print("Média Aritmética: ${(nota1 + nota2) / 2}");
}

void mediaPonderada() {
  List notas = [];
  double aux1, aux2;
  double somaPesos = 0;
  double notaXpeso = 0;

  for (int i = 0; i < 3; i++) {
    print("Digite a nota $i: ");
    aux1 = double.parse(stdin.readLineSync()!);

    print("Digite o peso da nota $i: ");
    aux2 = double.parse(stdin.readLineSync()!);
    somaPesos += aux2;
    notas.add([aux1, aux2]);
  }

  notas.forEach((element) {
    notaXpeso += (element[0] * element[1]);
  });

  print("Média Ponderada: ${notaXpeso / somaPesos}");
}

void main() {
  int opcao;

  do {
    print("Menu de Opções:\n");
    print("1. Média aritmética\n2. Média ponderada\n3. Sair\n");
    print("Digite a opção desejada.");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        mediaAritmetica();
        break;
      case 2:
        mediaPonderada();
        break;
      case 3:
        print("Saindo...");
        exit(0);

      default:
        print("Opção Inválida");
    }
  } while (opcao != 3);
}
