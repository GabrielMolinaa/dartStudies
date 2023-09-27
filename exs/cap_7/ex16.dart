import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(10, (index) => List<int>.filled(10, 0));
  int soma = 0;
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (i == j) {
        soma += matriz[i][j];
      }
    }
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print("A média dos elementos da diagonal principal é: ${soma / 10}");
}
