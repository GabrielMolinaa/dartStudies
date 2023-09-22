import 'dart:io';

void main() {
  double precoCompra = 0, precoVenda = 0, lucro = 0;
  String? tipo;
  int cont = 0, cont1 = 0;
  num lucroTotal = 0;
  List acoes = [];
  do {
    print("Digite o tipo da ação, preço de compra e preço de venda");
    String input = stdin.readLineSync()!;
    List<String> acao = input.split(' ');
    if (acao.length == 3) {
      try {
        tipo = acao[0];
        if (tipo == 'F') {
          break;
        }
        precoCompra = double.parse(acao[1]);
        precoVenda = double.parse(acao[2]);
        lucro = precoVenda - precoCompra;
        acoes.add([tipo, precoCompra, precoVenda, lucro]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    } else {
      print("Formato Inválido!");
    }
  } while (tipo != 'F');

  acoes.forEach((element) {
    print("Lucro Ação ${element[0]}: R\$${element[3]}");
    if (element[3] > 1000) {
      cont++;
    }
    if (element[3] < 200) {
      cont1++;
    }
    lucroTotal += element[3];
  });

  print("Quantidade de ações com Lucro Superior a R\$1000: $cont");
  print("Quantidade ações com lucro inferior a R\$200: ${cont1}");
  print("Lucro Total: $lucroTotal");
}
