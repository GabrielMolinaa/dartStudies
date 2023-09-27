import 'dart:io';

void main() {
  List<List<double>> matrizA =
      List.generate(3, (index) => List<double>.filled(3, 0));
  List<List<double>> matrizB =
      List.generate(3, (index) => List<double>.filled(3, 0));
  List<List<double>> matrizC =
      List.generate(3, (index) => List<double>.filled(3, 0));
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print("Preencha a MatrizA[$i][$j]");
      matrizA[i][j] = double.parse(stdin.readLineSync()!);

      print("Digite o valor que irá multiplicar MatrizA[$i][$j]");
      matrizB[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      matrizC[i][j] = matrizA[i][j] * matrizB[i][j];
    }
  }

  print("Matriz Resultante");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write(" ${matrizC[i][j]} ");
    }
    print('');
  }
}
