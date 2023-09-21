/*
Faça um programa que receba a idade e o peso de quinze pessoas, e
que calcule e mostre as médias dos pesos das pessoas da mesma faixa
etária. As faixas etárias são: de 1-10 anos, de 11-20 anos, de 21-30 anos
e de 31 anos para cima.

*/

import 'dart:io';

void main() {
  List<int> idades = [];
  List<double> pesos = [];
  List<double> pesosFaixa1 = List.filled(2, 0),
      pesosFaixa2 = List.filled(2, 0),
      pesosFaixa3 = List.filled(2, 0),
      pesosFaixa4 = List.filled(2, 0);

  for (int i = 0; i <= 14; i++) {
    print("Digite a Idade e o Peso da Pessoa ${i + 1} (separados por espaço):");
    String? input = stdin.readLineSync();
    List<String> partes = input!.split(' ');

    if (partes.length == 2) {
      try {
        int idade = int.parse(partes[0]);
        double peso = double.parse(partes[1]);

        idades.add(idade);
        pesos.add(peso);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você inseriu uma idade e um peso válidos.");
        i--; // Para repetir a entrada para a mesma pessoa
      }
    } else {
      print(
          "Formato incorreto. Digite a idade e o peso separados por um espaço.");
      i--; // Para repetir a entrada para a mesma pessoa
    }
  }

  idades.forEach((item) {
    if (item >= 1 && item <= 10) {
      pesosFaixa1[0] += 1;
      pesosFaixa1[1] += pesos[idades.indexOf(item)];
    } else if (item >= 11 && item <= 20) {
      pesosFaixa2[0] += 1;
      pesosFaixa2[1] += pesos[idades.indexOf(item)];
    } else if (item >= 21 && item <= 30) {
      pesosFaixa3[0] += 1;
      pesosFaixa3[1] += pesos[idades.indexOf(item)];
    } else if (item > 30) {
      pesosFaixa4[0] += 1;
      pesosFaixa4[1] += pesos[idades.indexOf(item)];
    }
  });

  print("---------------------------------------------------");
  print(
      "1-10 [QTD: ${pesosFaixa1[0]}] Média Pesos: ${pesosFaixa1[1] / pesosFaixa1[0]}");
  print(
      "11-20 [QTD: ${pesosFaixa2[0]}] Média Pesos: ${pesosFaixa2[1] / pesosFaixa2[0]}");
  print(
      "21-30 [QTD: ${pesosFaixa3[0]}] Média Pesos: ${pesosFaixa3[1] / pesosFaixa3[0]}");
  print(
      "+30 [QTD: ${pesosFaixa4[0]}] Média Pesos: ${pesosFaixa4[1] / pesosFaixa4[0]}");
}
