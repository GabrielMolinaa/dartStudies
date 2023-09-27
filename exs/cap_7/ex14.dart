import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(12, (index) => List<double>.filled(13, 0));
  List<double> maiorValor = List.filled(2, 0);

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      print("Valor [$i][$j]:");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
      if (matriz[i][j].abs() > maiorValor[i]) {
        maiorValor[i] = matriz[i][j].abs();
      }
    }
  }
  print("Matriz Original");
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print(maiorValor);

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      matriz[i][j] /= (maiorValor[i]);
    }
  }

  print("\n\nMatriz Resultante");
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 13; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }
}
