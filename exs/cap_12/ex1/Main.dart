import 'dart:io';
import 'Carro.dart';

void main() {
  List<Carro> carros = [];
  double somaImpostos = 0;
  int cont = 0;
  for (int i = 0; i < 5; i++) {
    print("Digite a placa do carro [${i + 1}]: ");
    String placa = stdin.readLineSync()!;

    print("Digite o Ano do carro [${i + 1}]: ");
    int ano = int.parse(stdin.readLineSync()!);
    DateTime anoFabricacao = DateTime(ano);

    carros.add(Carro(placa, anoFabricacao));
  }

  carros.forEach((element) {
    element.calculaImposto();
    somaImpostos = element.somarImposto(somaImpostos);
    if (element.insento()) {
      cont++;
    }
  });

  print("Soma Impostos: R\$$somaImpostos.");
  print("Não Pagam Impostos: $cont carros.");
}
