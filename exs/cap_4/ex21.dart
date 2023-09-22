import 'dart:io';

void main() {
  double preco;
  int codigo;
  String procedencia = '0';

  print("Digite o preço do produto:");
  String? input = stdin.readLineSync();
  preco = double.parse(input as String);

  print("Digite o código do produto:");
  input = stdin.readLineSync();
  codigo = int.parse(input as String);

  if (codigo >= 10 && codigo <= 20) {
    procedencia = 'Centro-Oeste';
  }

  if (codigo >= 21 && codigo <= 30 || codigo == 6 || codigo == 5) {
    procedencia = 'Nordeste';
  }

  if (codigo == 7 || codigo == 8 || codigo == 9) {
    procedencia = "Sudeste";
  }

  if (codigo == 1) {
    procedencia = "Sul";
  } else if (codigo == 2) {
    procedencia = "Norte";
  } else if (codigo == 3) {
    procedencia = "Leste";
  } else if (codigo == 4) {
    procedencia = "Oeste";
  }

  print("Código Produto: $codigo\nProcedência: $procedencia");
  print("Preço do Protudo: $preco");
}
