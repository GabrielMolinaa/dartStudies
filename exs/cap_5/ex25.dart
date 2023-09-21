/*
Uma agência bancária possui vários clientes que podem fazer investimentos
com rendimentos mensais, conforme a tabela a seguir:

-----------------------------------------------------
| TIPO | DESCRIÇÃO             |  RENDIMENTO MENSAL |
-----------------------------------------------------
|  1   | Poupança              |        1.5%        |
|  2   | Poupança Plus         |         2%         |
|  3   | Fundos de Renda Fixa  |         4%         |
-----------------------------------------------------

Faça um programa que leia o código do cliente, o tipo do investimento
e o valor investido, e que calcule e mostre o rendimento mensal de acordo
com o tipo de investimento. No final, o programa deverá mostrar o total
investido e o total de juros pago.
A leitura terminará quando o código do cliente digitado for menor ou igual a 0;


*/

import 'dart:io';

class Cliente {
  int codigo = 0;
  int tipoInv = 0;
  double? valorInv = 0, rendimentoMensal = 0;

  Cliente(int codigo, int tipoInv, double valorInv) {
    this.codigo = codigo;
    this.tipoInv = tipoInv;
    this.valorInv = valorInv;
  }

  double calcularRendimento() {
    switch (this.tipoInv) {
      case 1:
        rendimentoMensal = this.valorInv! * 0.015;
        break;

      case 2:
        rendimentoMensal = this.valorInv! * 0.02;
        break;

      case 3:
        rendimentoMensal = this.valorInv! * 0.04;
        break;

      default:
        print("Tipo de Investimento Inválido");
        return 0;
    }
    return this.rendimentoMensal!;
  }
}

void main() {
  int codigoCliente = 0;
  int tipoInv = 0;
  double valorInv = 0;
  List<Cliente> clientes = [];

  do {
    print("Digite o Código do Cliente (digite 0 para sair): ");
    String? input = stdin.readLineSync();
    codigoCliente = int.tryParse(input ?? '') ?? 0;

    if (codigoCliente <= 0) {
      break;
    }

    print("Digite o Tipo do Investimento (1, 2 ou 3): ");
    input = stdin.readLineSync();
    tipoInv = int.tryParse(input ?? '') ?? 0;

    print("Digite o Valor Investido: ");
    input = stdin.readLineSync();
    valorInv = double.tryParse(input ?? '') ?? 0;

    if (tipoInv >= 1 && tipoInv <= 3) {
      Cliente cliente = Cliente(codigoCliente, tipoInv, valorInv);
      clientes.add(cliente);

      print("------------------------------");
      print("Rendimento do Cliente ${cliente.codigo}");
      print(cliente.calcularRendimento());
      print("------------------------------");
    } else {
      print("Tipo de Investimento Inválido");
    }
  } while (true);

  double totalInvestido = 0;
  double totalJuros = 0;

  for (var cliente in clientes) {
    double rendimentoMensal = cliente.calcularRendimento();
    totalInvestido += cliente.valorInv!;
    totalJuros += rendimentoMensal;
  }

  print("------------------------------");
  print("Total Investido: $totalInvestido");
  print("Total de Juros: $totalJuros");
  print("------------------------------");
}
