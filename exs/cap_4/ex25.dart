/*
Uma empresa decidiu dar uma gratificação de Naal a seus funcionários,
baseada no número de horas extras e no número de horas que o funcionário
faltou ao trabalho. O valor do prêmio é obtido pela consulta à tabela
que se segue, na qual:
H = número de horas extras - (2/3 * (número de horas-falta))

---------------------------------------------------
|   H(MINUTOS)          |      PRÊMIO(R$)         |
---------------------------------------------------
|     > 2.400           |       500.00            |
|     1.800 <- 2.400    |       400.00            |      
|     1.200 <-> 1.800   |       300.00            | 
|     600 <- 1.200      |       200.00            |
|     < 600             |       100.00            |
---------------------------------------------------


*/

import 'dart:io';

void calculaPremio(double horasExtras, double horasFaltas) {
  double calc = (horasExtras - ((2 / 3) * (horasFaltas))) * 60;

  if (calc > 2400) {
    print("H(Minutos) Trabalhados: $calc\nPrêmio Ganhado: R\$500,00");
  } else if (calc >= 1800 && calc < 2400) {
    print("H(Minutos) Trabalhados: $calc\nPrêmio Ganhado: R\$400,00");
  } else if (calc >= 1200 && calc < 1800) {
    print("H(Minutos) Trabalhados: $calc\nPrêmio Ganhado: R\$300,00");
  } else if (calc >= 600 && calc < 1200) {
    print("H(Minutos) Trabalhados: $calc\nPrêmio Ganhado: R\$200,00");
  } else {
    print("H(Minutos) Trabalhados: $calc\nPrêmio Ganhado: R\$100,00");
  }
}

void main() {
  double horasExtras = 0, horasFaltas = 0;

  print("Digite o número de horas extras do funcionário: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    horasExtras = double.parse(input);
  }

  print("Digite o número de faltas (em Horas) do funcionário: ");
  String? input2 = stdin.readLineSync();
  if (input2 != null) {
    horasFaltas = double.parse(input2);
  }

  calculaPremio(horasExtras, horasFaltas);
}
