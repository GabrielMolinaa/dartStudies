import 'habitante.dart';
import 'dart:io';

void main() {
  List<Habitante> habitantes = [];
  late double somaSalario = 0, maiorSalario = 0;
  ;
  late int somaFilhos = 0;

  for (int i = 0; i < 2; i++) {
    print("Digite o salário do ${i + 1}° Habitante: ");
    double salario = double.parse(stdin.readLineSync()!);

    print("Digite a idade do ${i + 1}° Habitante: ");
    int idade = int.parse(stdin.readLineSync()!);

    print("Digite o N° de Filhos do ${i + 1}° Habitante: ");
    int numeroFilhos = int.parse(stdin.readLineSync()!);

    habitantes.add(Habitante(salario, idade, numeroFilhos));
  }

  habitantes.forEach((element) {
    somaSalario += element.getSalario;
    somaFilhos += element.getNumeroFilhos;
    if (element.getSalario > maiorSalario) {
      maiorSalario = element.getSalario;
    }
  });
  print("Media Salarial: ${somaSalario / habitantes.length}");
  print("Media N° Filhos: ${somaFilhos / habitantes.length}");
  print("Maior Salário: $maiorSalario");
}
