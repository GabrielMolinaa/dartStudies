import 'dart:io';

void main() {
  File recebimentos = File("Recebimentos.csv");
  List<String> recebimentosAux = [];

  print("Consulta de Recebimento");
  print("Digite o valor do recebimento para consultar: ");
  double valor = double.parse(stdin.readLineSync()!);

  try {
    List<String> leitorRecebimentos = recebimentos.readAsLinesSync();
    String auxiliar;
    print("Valores menores que R\$$valor");
    for (int i = 1; i < leitorRecebimentos.length; i++) {
      auxiliar = leitorRecebimentos[i].replaceAll(' ', '');
      recebimentosAux = auxiliar.split(',');
      if (double.parse(recebimentosAux[1]) < valor) {
        print(recebimentosAux);
      }
    }
  } catch (e) {
    print("Erro Inesperado! $e");
  }
}
