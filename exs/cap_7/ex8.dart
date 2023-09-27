import 'dart:math';
import 'dart:io';

void main() {
  List<List<int>> matrizA =
      List.generate(3, (index) => List<int>.filled(8, Random().nextInt(20)));
  List<List<int>> matrizB =
      List.generate(3, (index) => List<int>.filled(8, Random().nextInt(20)));

  List<List<int>> matrizC = List.generate(3, (index) => List.filled(8, 0));
  List<List<int>> matrizD = List.generate(3, (index) => List.filled(8, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 8; j++) {
      matrizC[i][j] = matrizA[i][j] + matrizB[i][j];
      matrizD[i][j] = (matrizA[i][j] - matrizB[i][j]);
    }
  }

  print("Matriz Soma");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 8; j++) {
      stdout.write(" ${matrizC[i][j]} ");
    }
    print(' ');
  }
  print('\n');

  print("Matriz Subtração");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 8; j++) {
      stdout.write(" ${matrizD[i][j]} ");
    }
    print(' ');
  }
  print('\n\n');
}
