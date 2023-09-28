import 'dart:io';

List leDados() {
  List<double> salario = [];
  List<int> numFilhos = [];

  int cont = 0, somaFilhos = 0, contSalarioBaixo = 0;
  double somaSalario = 0, mediaSalario = 0, mediaFilhos = 0;
  double maiorSalario = 0, percentualBaixoSalario = 0;
  print("Pesquisa iniciada! Para sair, digite -1 no salário!");
  while (true) {
    print("Digite o salário da ${cont + 1}° pessoa: ");
    double salarioAux = double.parse(stdin.readLineSync()!);
    if (salarioAux == -1) {
      break;
    } else {
      salario.add(salarioAux);
    }
    somaSalario += salario[cont];

    print("Digite o N° filhos da pessoa ${cont + 1}");
    numFilhos.add(int.parse(stdin.readLineSync()!));
    somaFilhos += numFilhos[cont];
    cont++;
  }

  mediaSalario = somaSalario / salario.length;
  mediaFilhos = somaFilhos / numFilhos.length;

  salario.sort();
  maiorSalario = salario[salario.length - 1];

  salario.forEach((element) {
    if (element < 380) {
      contSalarioBaixo++;
    }
  });

  percentualBaixoSalario = ((contSalarioBaixo / salario.length) * 100);
  return [mediaSalario, mediaFilhos, maiorSalario, percentualBaixoSalario];
}

void main() {
  List retorno = leDados();

  print("Media Salário: R\$${retorno[0]} ");
  print("Media Filhos: ${retorno[1]}");
  print("Maior Salário: R\$${retorno[2]}");
  print("Percentual de pessoas com salário inferior a R\$380: %${retorno[3]}");
}
