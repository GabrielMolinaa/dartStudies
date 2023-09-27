import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(5, (index) => List<double>.filled(5, 0));

  List vetor1 = [];
  List vetor2 = [];
  double somaLinha = 0, somaColuna = 0;

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Valor [$i][$j]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      somaLinha += matriz[i][j];
      somaColuna += matriz[j][i];
    }

    vetor1.add(somaLinha);
    vetor2.add(somaColuna);
    somaLinha = 0;
    somaColuna = 0;
  }

  print("Soma Linhas: $vetor1");
  print("Soma Colunas: $vetor2");
}
