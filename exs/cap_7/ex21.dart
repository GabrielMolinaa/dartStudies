import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(7, (index) => List<double>.filled(10, 0));
  double soma = 0;
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 10; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 6; j++) {
      soma += matriz[j][i];
    }
    matriz[6][i] = soma;
    soma = 0;
  }
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }
}
