import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(2, (index) => List<int>.filled(3, 0));
  int cont = 0;
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
      print("Valor [$i][$j]");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
      if (!(matriz[i][j] > 5 && matriz[i][j] < 15)) {
        cont++;
      }
    }
  }

  print(
      "A quantidade de elementos na matriz que não pertencem ao invervalo [5,15] é: $cont");
}
