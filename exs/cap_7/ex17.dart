import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(5, (index) => List<int>.filled(5, 0));
  int soma = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 5; i++) {
    soma += matriz[i][matriz.length - 1 - i];
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print("A média dos elementos da diagonal secundária é: ${soma}");
}
