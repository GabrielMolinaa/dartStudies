import 'dart:io';

void main() {
  double preco, imposto, novoPreco;
  String? categoria, situacao, classificacao;
  int index1, index2 = 0;
  int percentualAumento = 0;

  var matriz = [
    [
      [1, 5],
      [2, 8],
      [3, 10]
    ],
    [
      [1, 12],
      [2, 15],
      [3, 18]
    ]
  ];

  print("Digite o preco: ");
  String? input = stdin.readLineSync();
  preco = double.parse(input as String);

  print("\n1 - Limpeza | 2 - Alimentação | 3 - Vestuário");
  print("Digite a categoria: ");
  categoria = stdin.readLineSync();

  print(
      "\nR - Produtos que necessitam de Refrigeração\nN - Produtos que não precisam de refrigeração");
  print("Digite a Situação: ");
  situacao = stdin.readLineSync();

  if (preco <= 25) {
    index1 = 0;
  } else {
    index1 = 1;
  }

  for (int i = 0; i < matriz[index1].length; i++) {
    if (int.parse(categoria as String) == matriz[index1][index2][0]) {
      percentualAumento = matriz[index1][index2][1];
      break;
    } else {
      index2++;
    }
  }

  print(
      "O valor do aumento utilizando $percentualAumento% é de: ${preco * (percentualAumento / 100)}");

  if (categoria == 2 || situacao == 'R') {
    imposto = preco * 0.05;
  } else {
    imposto = preco * 0.08;
  }
  print("O valor do imposto é de: R\$ $imposto");

  novoPreco = preco + (preco * (percentualAumento / 100)) - imposto;

  if (novoPreco <= 50) {
    classificacao = "Barato";
  } else if (novoPreco >= 120) {
    classificacao = "Caro";
  } else {
    classificacao = "Normal";
  }

  print("Novo Preço do Produto: $novoPreco\nClassificação: $classificacao");
}
