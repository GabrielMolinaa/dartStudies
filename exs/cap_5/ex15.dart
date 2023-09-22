void main() {
  int contSim = 0, contNao = 0, mulherSim = 0, contHomem = 0;
  double percentHomemNao = 0;
  List entrevistados = [
    ['F', 'S'],
    ['F', 'N'],
    ['M', 'S'],
    ['M', 'N'],
    ['F', 'S'],
    ['M', 'S'],
    ['M', 'S'],
    ['M', 'S'],
    ['F', 'S'],
    ['F', 'N']
  ];

  entrevistados.forEach((element) {
    if (element[0] == 'M') {
      contHomem++;
    }

    if (element[1] == 'S') {
      if (element[0] == 'F') {
        mulherSim++;
      }
      contSim++;
    } else if (element[1] == 'N') {
      if (element[0] == 'M') {
        percentHomemNao++;
      }
      contNao++;
    }
  });

  print("QTD SIM: $contSim");
  print("QTD NÃO: $contNao");
  print("Mulheres que responderam Sim: $mulherSim");
  print(
      "% Homens que responderam Não: %${(percentHomemNao / contHomem) * 100}");
}
