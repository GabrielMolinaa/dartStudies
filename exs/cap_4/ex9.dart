import 'dart:io';

void main() {
  double saldoMedio = 0;
  double credito = 0;
  print("Digite o saldo médio do cliente: ");
  String? input = stdin.readLineSync();
  saldoMedio = double.parse(input as String);

  if (saldoMedio <= 200) {
    credito = saldoMedio * 0.1;
  } else if (saldoMedio > 400) {
    credito = saldoMedio * 0.3;
  } else if (saldoMedio > 200 && saldoMedio <= 300) {
    credito = saldoMedio * 0.2;
  } else {
    credito = saldoMedio * 0.25;
  }

  print("Saldo Médio: $saldoMedio\nCrédito Obtido: $credito");
}
