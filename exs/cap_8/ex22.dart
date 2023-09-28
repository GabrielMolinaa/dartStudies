import 'dart:io';

List<List<double>> recebeMatriz() {
  List<List<double>> matriz =
      List.generate(10, (index) => List<double>.filled(5, 0));

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      print("Digite o valor [$i][$j]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }
  return (matriz);
}

double soma(List<List<double>> matriz) {
  double soma = 0;

  for (int i = 6; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      soma += matriz[i][j];
    }
  }
  return soma;
}

void main() {
  List<List<double>> matriz = recebeMatriz();
  double somaResultado = soma(matriz);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(" ${matriz[i][j]} ");
    }
    print("");
  }
  print(
      "A soma dos elementos localizados abaixo da sexta linha é: $somaResultado");
}
