import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(5, (index) => List<int>.filled(5, 0));
  int soma1 = 0, soma2 = 0, soma3 = 0, soma4 = 0, soma5 = 0;

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print("");
  }

  for (int i = 0; i < 5; i++) {
    soma1 += matriz[3][i];
  }

  for (int i = 0; i < 5; i++) {
    soma2 += matriz[i][1];
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == j) {
        soma3 += matriz[i][j];
      }
    }
  }

  for (int i = 0; i < matriz.length; i++) {
    soma4 += matriz[i][matriz.length - 1 - i];
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      soma5 += matriz[i][j];
    }
  }

  print("Soma Linha 4: $soma1");
  print("Soma Coluna 2: $soma2");
  print("Soma Diagonal Principal: $soma3");
  print("Soma Diagonal Secundária: $soma4");
  print("Soma de Todos os Elementos: $soma5");
}
