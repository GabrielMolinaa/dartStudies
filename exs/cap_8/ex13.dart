import 'dart:io';

List leDados() {
  List<int> idade = [];
  List<String> sexo = [];
  List<double> salario = [];
  List<int> filhos = [];

  for (int i = 0; i < 15; i++) {
    print("Idade ${i + 1}° Pessoa: ");
    idade.add(int.parse(stdin.readLineSync()!));

    print("Sexo ${i + 1}° Pessoa [M/F]: ");
    sexo.add(stdin.readLineSync()!);

    print("Salário ${i + 1}° Pessoa: ");
    salario.add(double.parse(stdin.readLineSync()!));

    print("N° de Filhos ${i + 1}° Pessoa: ");
    filhos.add(int.parse(stdin.readLineSync()!));
  }

  return ([idade, sexo, salario, filhos]);
}

void mediaSalario(List vetor) {
  double soma = 0;

  vetor.forEach((element) {
    soma += element;
  });

  print("A média de salário é: R\$${soma / vetor.length}");
}

void calcIdades(List vetor) {
  int menorIdade = vetor[0];
  int maiorIdade = 0;

  vetor.forEach((element) {
    if (menorIdade > element) {
      menorIdade = element;
    }
    if (maiorIdade < element) {
      maiorIdade = element;
    }
  });

  print("Maior Idade: $maiorIdade anos");
  print("Menor Idade: $menorIdade anos");
}

void calcMulheres(List vetor) {
  int cont = 0;

  for (int i = 0; i < vetor[1].length; i++) {
    if ((vetor[1][i] == 'F') && (vetor[3][i] == 3) && (vetor[2][i] < 500)) {
      cont++;
    }
  }
  print("Quantidade de mulheres com três filhos que recebem até R\$500: $cont");
}

void main() {
  var pesquisa;
  pesquisa = leDados();
  mediaSalario(pesquisa[2]);
  calcIdades(pesquisa[0]);
  calcMulheres(pesquisa);
}
