import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(5, (index) => List<double>.filled(5, 0));
  List elementoDiagPrinc = [];

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
      if (i == j) {
        elementoDiagPrinc.add(matriz[i][j]);
      }
    }
  }

  print("Matriz Original");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("\t${matriz[i][j]}\t");
    }
    print("");
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      matriz[i][j] *= elementoDiagPrinc[i];
    }
  }

  print("\nMatriz Resultante");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print("");
  }
  print("\n");
  print(elementoDiagPrinc);
}
