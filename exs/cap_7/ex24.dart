import 'dart:io';

void main() {
  List precoProdutos = [];
  List<List<int>> estoque =
      List.generate(5, (index) => List<int>.filled(10, 0));
  int soma = 0;
  List qtdGeral = [];
  for (int i = 0; i < 10; i++) {
    print("Valor ${i + 1} produto: ");
    precoProdutos.add(double.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      print("Armazém[${i + 1}] quantidade estoque produto[${j + 1}]: ");
      estoque[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print(
      "Quantidade de produtos estocados em cada armazé; Linha = Armazém, Coluna=qtdProdutos");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write(" ${estoque[i][j]} ");
    }
    print('');
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      soma += estoque[j][i];
    }
    qtdGeral.add(soma);
    soma = 0;
  }

  print("Quantidade Geral");
  for (int i = 0; i < 10; i++) {
    print("Produto[${i + 1}] ${qtdGeral[i]} ");
  }

  int aux = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      if (estoque[i][j] > soma) {
        soma = estoque[i][j];
        aux = j;
      }
    }
  }

  print("Preco do produto com mais estoque: ${precoProdutos[aux]}");

  int menor = estoque[0][0];
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      if (estoque[i][j] < menor) {
        menor = estoque[i][j];
      }
    }
  }
  print("Menor estoque armazenado: $menor");

  List custoEstoque = [];
  num somaPrecos = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      somaPrecos = somaPrecos + (estoque[i][j] * precoProdutos[j]);
    }
    custoEstoque.add(somaPrecos);
    somaPrecos = 0;
  }
  print("Armazém\t\tCusto Total");
  for (int i = 0; i < 5; i++) {
    print("${i + 1}\t\t${custoEstoque[i]}");
  }
}
