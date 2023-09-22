import 'dart:io';

void main() {
  double precoAtual = 0, novoPreco = 0;
  int codigoProduto = 0;

  print("Digite o preço atual do produto: ");
  String? input = stdin.readLineSync();
  precoAtual = double.parse(input as String);

  print("Digite o código do produto: ");
  input = stdin.readLineSync();
  codigoProduto = int.parse(input as String);

  if (precoAtual > 100) {
    novoPreco = precoAtual - precoAtual * 0.15;
  } else if (precoAtual > 30 && precoAtual <= 100) {
    novoPreco = precoAtual - precoAtual * 0.10;
  } else {
    print("Sem desconto!");
    exit(0);
  }

  print(
      "O valor do desconto é de: ${novoPreco - precoAtual}\nValor Final: ${novoPreco}\nCódigo produto: ${codigoProduto}");
}
