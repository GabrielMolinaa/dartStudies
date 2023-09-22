import 'dart:io';

void main() {
  String codigo;
  double transacoes;
  double comprasP = 0, comprasV = 0, primeiraPrestacao = 0;
  List<double> comprasPrazo = [];

  for (int i = 0; i < 15; i++) {
    print("Digite o código [V] para à Vista e [P] para a prazo");
    codigo = stdin.readLineSync()!;

    print("Digite o valor da transação $i: ");
    transacoes = double.parse(stdin.readLineSync()!);

    if (codigo == 'V') {
      comprasV += transacoes;
    } else if (codigo == 'P') {
      comprasP += transacoes;
      comprasPrazo.add(transacoes);
    }
  }

  comprasPrazo.forEach((element) => primeiraPrestacao += (element / 3));

  print("Valor total compras à Vista: R\$$comprasV");
  print("Valor total compras a Prazo: R\$$comprasP");
  print("Valor total compras Efetuadas: R\$${comprasV + comprasP}");
  print(
      "Valor primeira prestação das compras a prazo juntas: $primeiraPrestacao");
}
