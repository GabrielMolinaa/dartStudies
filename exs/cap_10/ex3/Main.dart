import 'dart:io';
import 'Habitante.dart';

List<Habitante> preenchePesquisa() {
  List<Habitante> habitantes = [];

  for (int i = 0; i < 5; i++) {
    print("Digite o sexo[M/F] do ${i + 1}° Habitante: ");
    String sexo = stdin.readLineSync()!;

    print("Digite a altura(cm) do ${i + 1}° Habitante: ");
    double altura = double.parse(stdin.readLineSync()!);

    print("Digite a idade do ${i + 1}° Habitante: ");
    int idade = int.parse(stdin.readLineSync()!);

    print(
        "Digite a cor dos olhos [A-azul, V-verde, C-castanhos] do ${i + 1}° Habitante: ");
    String corOlhos = stdin.readLineSync()!;
    habitantes.add(Habitante(sexo, altura, idade, corOlhos));
  }
  return habitantes;
}

void main() {
  List<Habitante> habitantes = preenchePesquisa();
  double somaIdade = 0;
  int maiorIdade = habitantes[0].getIdade;
  int cont = 0, contIdade = 0;
  ;
  double percentualHomens = 0;

  habitantes.forEach((element) {
    if ((element.getAltura > 160) && (element.getCorOlhos == 'C')) {
      somaIdade += element.getIdade;
      contIdade++;
    }

    if (element.getIdade > maiorIdade) {
      maiorIdade = element.getIdade;
    }

    if (((element.getSexo == 'F') &&
            ((element.getIdade > 20 && element.getIdade <= 45))) ||
        (element.getSexo == 'F') &&
            ((element.getCorOlhos == 'V') && (element.getAltura < 170))) {
      cont++;
    }

    if (element.getSexo == 'M') {
      percentualHomens++;
    }
  });

  print(
      "Media de idade das pessoas com olhos castanhos e altura > 1.6m: ${somaIdade / contIdade}");
  print("Maior Idade: $maiorIdade ");
  print(
      "Mulheres com idade entre 20 e 45 ou com olhos verdes e altura menor a 1.7m: $cont");
  print(
      "Percentual de homens: ${(percentualHomens / habitantes.length) * 100} ");
}
