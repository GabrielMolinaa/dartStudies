import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(5, (index) => List<double>.filled(5, 0));
  double maiorValor = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
      if (matriz[i][j] > maiorValor) {
        maiorValor = matriz[i][j];
      }
    }
  }

  print("Matriz Original");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }
  print("\n");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == j) {
        matriz[i][j] *= maiorValor;
      }
    }
  }

  print("Matriz Resultante");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print("Maior Valor: $maiorValor");
}
