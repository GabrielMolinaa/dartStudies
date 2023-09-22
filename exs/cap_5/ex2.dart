import 'dart:io';

void main() {
  int qtdIngressos = 120;
  int despesas = 200;

  for (double i = 5; i >= 1; i -= 0.5) {
    stdout.write(
        "Valor ingresso: $i - Lucro Esperado (-Despesas): ${(i * qtdIngressos) - despesas} - QTD Ingressos $qtdIngressos\n");
    qtdIngressos += 26;
  }
}
