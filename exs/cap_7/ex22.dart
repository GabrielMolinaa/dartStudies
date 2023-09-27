import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(3, (index) => List<int>.filled(4, 0));
  int cont1 = 0, somaImpar = 0, cont2 = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
      if (matriz[i][j] % 2 == 0) {
        cont1++;
      }

      if (matriz[i][j] % 2 != 0) {
        somaImpar += matriz[i][j];
      }
      cont2 += matriz[i][j];
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print('');
  }

  print("QTD PAR: $cont1");
  print("Soma Ímpares: $somaImpar");
  print("Media elementos: ${cont2 / 12}");
}
