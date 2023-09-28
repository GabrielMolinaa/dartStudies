import 'dart:io';

List<List> preencheVetor() {
  List<List> vetor = [
    [
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
    ],
    []
  ];

  for (int i = 0; i < 12; i++) {
    print("Digite a temperatura média no mês de ${vetor[0][i]}");
    vetor[1].add(double.parse(stdin.readLineSync()!));
  }
  return vetor;
}

List<List> temperatura(List<List> vetor) {
  double maiorTemperatura = 0;
  double menorTemperatura = vetor[1][0];
  int indexMaior = 0, indexMenor = 0;

  vetor[1].forEach((element) {
    if (element > maiorTemperatura) {
      maiorTemperatura = element;
    }
    if (element < menorTemperatura) {
      menorTemperatura = element;
    }
  });

  indexMaior = vetor[1].indexOf(maiorTemperatura);
  indexMenor = vetor[1].indexOf(menorTemperatura);

  return [
    [
      maiorTemperatura,
      vetor[0][indexMaior],
      menorTemperatura,
      vetor[0][indexMenor]
    ]
  ];
}

void main() {
  List<List> vetor = preencheVetor();
  List<List> resultado = temperatura(vetor);
  print("Maior Temperatura: ${resultado[0]} - ${resultado[1]}°");
  print("Menor Temperatura: ${resultado[2]} - ${resultado[3]}°");
}
