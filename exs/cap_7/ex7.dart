import 'dart:io';

void main() {
  List<List<double>> matrizM =
      List.generate(4, (index) => List<double>.filled(6, 0));
  List<List<double>> matrizN =
      List.generate(6, (index) => List<double>.filled(4, 0));
  num soma = 0;

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 6; j++) {
      print("Valor matrizM[$i][$j]");
      matrizM[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      print("Valor matrizN[$i][$j]");
      matrizN[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 6; j++) {
      soma += matrizN[j][i] + matrizM[i][j];
    }
    print("Linha MatrizM[$i], Coluna MatrizN[$i] Soma: $soma");
    soma = 0;
  }
}
