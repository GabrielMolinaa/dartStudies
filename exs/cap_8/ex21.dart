import 'dart:io';
import 'dart:math';

int maiorElementoAcimaDiagonal(List<List<int>> matriz) {
  int maiorElemento = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (j > i) {
        if (maiorElemento < matriz[i][j]) {
          maiorElemento = matriz[i][j];
        }
      }
    }
  }
  return maiorElemento;
}

void main() {
  List<List<int>> matriz =
      List.generate(10, (index) => List<int>.filled(10, Random().nextInt(10)));
  int maiorElemento = 0;
  matriz[0][9] = 90;
  maiorElemento = maiorElementoAcimaDiagonal(matriz);
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print("");
  }

  print("O maior elemento acima da diagonal principal é: $maiorElemento");
}
