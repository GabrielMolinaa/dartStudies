import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(4, (index) => List<int>.filled(5, 0));
  List vetor1 = [];
  int soma = 0;
  int cont = 0;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 4; j++) {
      soma += matriz[j][i];
    }
    vetor1.add(soma);
    soma = 0;
  }

  vetor1.forEach((element) {
    if (element > 10) {
      stdout.write(" ${element}, ");
      cont++;
    }
  });

  if (cont == 0) {
    print("Não há elementos maiores que 10 no vetor");
  }
}
