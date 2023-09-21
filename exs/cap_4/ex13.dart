/* Faça um programa que receba o preço de um produto, calcule e mostre,
   de acordo com as tabelas a seguir, o novo preço e a classificação
                
            Tabela 1 - Percentual de Aumento
    ---------------------------------------------
    |     PRECO              |   %              |
    ---------------------------------------------
    |  ATÉ R$50              |   5              |  
    |  ENTRE $50 E $100      |   10             |  
    |  ACIMA DE R$100        |   15             |    
    ---------------------------------------------

              Tabela 2 - Classificações
    ---------------------------------------------
    | NOVO PREÇO              |   CLASSIFICAÇÃO |
    ---------------------------------------------
    |  ATÉ R$80               |      BARATO     | 
    |  ENTRE R$80 E R$120(*)  |      NORMAL     |
    |  ENTRE R$120 E R$200(*) |       CARO      |
    |  MAIOR QUE R$200        |    MUITO CARO   |   
    ---------------------------------------------

*/
import 'dart:io';

void percentualAumento(double preco) {
  double novoPreco;

  print("----------------------------------------------------");
  print("                   Aumento Percentual");
  print("----------------------------------------------------");
  if (preco > 100) {
    novoPreco = preco + (preco * 0.15);
    print(
        "Preço Produto: $preco\nPercentual de Aumento: 15%\nPreço Final: ${novoPreco}");
  } else if (preco < 50) {
    novoPreco = preco + (preco * 0.05);
    print(
        "Preço Produto: $preco\nPercentual de Aumento: 5%\nPreço Final: ${novoPreco}");
  } else {
    novoPreco = preco + (preco * 0.1);
    print(
        "Preço Produto: $preco\nPercentual de Aumento: 10%\nPreço Final: ${novoPreco}");
  }
  classificacao(novoPreco);
}

void classificacao(double preco) {
  print("----------------------------------------------------");
  print("                   Classificação");
  print("----------------------------------------------------");
  if (preco > 200) {
    print("Preco Produto: $preco\nClassificação: Muito Caro");
  } else if (preco < 80) {
    print("Preço Produto: $preco\nClassificação: Barato");
  } else if (preco > 80 && preco <= 120) {
    print("Preço Produto: $preco\nClassificação: Normal");
  } else {
    print("Preço Produto: $preco\nClassificação: Caro");
  }
}

void main() {
  double preco = 0;

  print("Escreva o Preço do Produto: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    preco = double.parse(input);
  }

  percentualAumento(preco);
}
