import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(8, (index) => List<int>.filled(6, 0));
  int soma = 0, cont = 0;
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 6; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 6; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print("");
  }

  for (int i = 0; i < 8; i++) {
    if (i % 2 == 0) {
      cont++;
      for (int j = 0; j < 6; j++) {
        soma += matriz[i][j];
      }
    }
  }

  print("A média dos elementos das linhas pares da matriz é: ${soma / cont}");
}
