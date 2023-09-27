import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(6, (index) => List<double>.filled(4, 0));
  List<double> maiorValor = List.filled(6, 0);

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      print("Valor [$i][$j]:");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
      if (matriz[i][j] > maiorValor[i]) {
        maiorValor[i] = matriz[i][j];
      }
    }
  }
  print("Matriz Original");
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print(maiorValor);

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      matriz[i][j] *= (maiorValor[i]);
    }
  }

  print("\n\nMatriz Resultante");
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }
}
