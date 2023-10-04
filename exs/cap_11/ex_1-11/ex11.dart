import 'dart:io';

void main() {
  File recebimentos = File("Recebimentos.csv");
  List<String> recebimentosAux = [];

  print("Consulta de Recebimento");
  print("Digite o primeiro valor do recebimento para consultar: ");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo valor (maior que o primeiro) do recebimento para consultar: ");
  double valor2 = double.parse(stdin.readLineSync()!);

  try {
    List<String> leitorRecebimentos = recebimentos.readAsLinesSync();
    String auxiliar;
    print("Valores entre R\$$valor1 e R\$$valor2");
    for (int i = 1; i < leitorRecebimentos.length; i++) {
      auxiliar = leitorRecebimentos[i].replaceAll(' ', '');
      recebimentosAux = auxiliar.split(',');
      if ((double.parse(recebimentosAux[1]) >= valor1) && (double.parse(recebimentosAux[1]) <= valor2)) {
        print(recebimentosAux);
      }
    }
  } catch (e) {
    print("Erro Inesperado! $e");
  }
}
