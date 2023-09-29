import 'Habitante.dart';
import 'dart:io';

List<Habitante> preencheHabitantes() {
  List<Habitante> habitantes = [];
  for (int i = 0; i < 20; i++) {
    print("Digite a idade do ${i + 1} Habitante");
    int idade = int.parse(stdin.readLineSync()!);

    print("Digite o sexo[M/F] do ${i + 1} Habitante");
    String sexo = stdin.readLineSync()!;

    print("Digite o salário do ${i + 1} Habitante");
    double salario = double.parse(stdin.readLineSync()!);

    print("Digite a renda Familiar do ${i + 1} Habitante");
    double rendaFamiliar = double.parse(stdin.readLineSync()!);

    print("Digite o N° de Filhos do ${i + 1} Habitante");
    int numeroFilhos = int.parse(stdin.readLineSync()!);

    habitantes
        .add(Habitante(idade, sexo, salario, rendaFamiliar, numeroFilhos));
  }
  return habitantes;
}

void main() {
  List<Habitante> habitantes = preencheHabitantes();
  double mediaSalario = 0;
  int menorIdade = habitantes[0].getIdade, maiorIdade = 0;
  int contMulheres = 0;

  habitantes.forEach((element) {
    mediaSalario += element.getSalario;
    if (maiorIdade < element.getIdade) {
      maiorIdade = element.getIdade;
    }
    if (menorIdade > element.getIdade) {
      menorIdade = element.getIdade;
    }
    if ((element.getSexo == 'F') &&
        (element.getNumeroFilhos > 2) &&
        (element.getRendaFamiliar < 600)) {
      contMulheres++;
    }
  });

  print("Media Salario: ${mediaSalario / habitantes.length}");
  print("Maior Idade: ${maiorIdade}");
  print("Menor Idade: ${menorIdade}");
  print(
      "Quantidade de mulheres com mais de dois filhos e com renda familiar inferior a R\$600: $contMulheres");
}
