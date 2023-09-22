import 'dart:io';

void main() {
  int tipoInvestimento = 0;
  double valorInvestido = 0;

  print("1 - Poupança [3%]\n2 - Fundos de renda fixa [4%]");
  print("Digite o tipo de investimento: ");
  String? input = stdin.readLineSync();
  tipoInvestimento = int.parse(input as String);

  print("Digite o valor a ser investido: ");
  input = stdin.readLineSync();
  valorInvestido = double.parse(input as String);

  switch (tipoInvestimento) {
    case 1:
      valorInvestido += valorInvestido * 0.03;
      break;
    case 2:
      valorInvestido += valorInvestido * 0.04;
      break;
    default:
      print("Tipo de Investimento Inválido!");
  }

  print("O Valor corrigido é de: $valorInvestido");
}
