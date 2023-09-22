import 'dart:io';

void main() {
  double valorCarro = 0;
  int percentual = 3;

  print("Digite o valor do carro: ");
  valorCarro = double.parse(stdin.readLineSync()!);

  for (int i = 6; i <= 60; i += 6) {
    print(
        "Preço Final Parcelado: ${valorCarro + valorCarro * (percentual / 100)}   - QTD Parcelas: $i - Valor Parcela:.2${(valorCarro + valorCarro * (percentual / 100)) / i}");

    print(
        "----------------------------------------------------------------------");
    percentual += 3;
  }

  print(
      "Preço Final à Vista (-20% Desconto): ${valorCarro - valorCarro * 0.2} ");
}
