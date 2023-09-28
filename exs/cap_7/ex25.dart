import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(20, (index) => List<double>.filled(5, 0));

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 5; j++) {
      print("Preco Produto[${i + 1}] Loja[${j + 1}]");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  double soma = 0;
  late int produto, loja;
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 5; j++) {
      if (matriz[i][j] > soma) {
        soma = matriz[i][j];
        produto = i;
        loja = j;
      }
    }
  }

  print("Produto mais Caro [${produto + 1}] na loja[${loja + 1}]: R\$${soma}");
}
