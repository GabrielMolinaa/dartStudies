import 'dart:io';

void main() {
  int idade = 1;
  int contMulheres = 0;
  String sexo;
  double salario = 0;
  List pesquisa = [];
  num somaSalarios = 0;

  do {
    print("Digite Idade, Sexo[M/F], Salario separados por espaço:");
    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');
    if (pessoa.length == 3) {
      try {
        idade = int.parse(pessoa[0]);
        if (idade <= 0) {
          break;
        }
        sexo = pessoa[1];
        salario = double.parse(pessoa[2]);
        pesquisa.add([idade, sexo, salario]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    } else {
      print("Formato Inválido!");
    }
  } while (idade > 0);

  print(pesquisa);
  pesquisa.forEach((element) {
    somaSalarios += element[2];

    if (element[1] == 'F') {
      if (element[2] < 200) {
        contMulheres++;
      }
    }
  });

  print("\nMedia Salários: ${somaSalarios / pesquisa.length}");

  pesquisa.sort((a, b) => a[0] > b[0] ? 1 : -1);
  print(
      "Maior idade: ${pesquisa[pesquisa.length - 1][0]} - Menor Idade: ${pesquisa[0][0]}");

  print("Mulheres com salário até R\$200: ${contMulheres}");

  pesquisa.sort((a, b) => a[2] > b[2] ? 1 : -1);
  print(
      "Pessoa com menor salário - Idade: ${pesquisa[0][0]}, Sexo:${pesquisa[0][1]}");
}
