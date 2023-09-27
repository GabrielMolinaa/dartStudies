import 'dart:io';

void main() {
  List<List<double>> matriz =
      List.generate(12, (index) => List<double>.filled(4, 0));
  List nomesMes = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 4; j++) {
      print("Digite o valor do mês ${i + 1} na semana ${j + 1}");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  double somaMes = 0;
  double somaAno = 0;
  print("Mês\t\tTotal Vendido");
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 4; j++) {
      somaMes += matriz[i][j];
      somaAno += matriz[i][j];
    }
    print("${nomesMes[i]}\t\t$somaMes");
    somaMes = 0;
  }

  print("Total de cada Semana: ");
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 4; j++) {
      print("${nomesMes[i]} - Semana ${j + 1}: ${matriz[i][j]}");
    }
  }

  print("\n\nTotal vendido no Ano: $somaAno");
}
