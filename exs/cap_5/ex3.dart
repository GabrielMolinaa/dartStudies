/*
Faça um programa que receba a idade de 15 pessoas, calcule e mostre:
-> a quantidade de pessoas em cada faixa etária;
-> a porcentagem de pessoas na primeira e na última faixa etária, com
   ao total de pessoas.

   ---------------------------------------
   |  Faixa etária          Idade        |
   ---------------------------------------
   |  1°                Até 15 anos      |
   |  2°                De 16 a 30 anos  |
   |  3°                De 31 a 45 anos  |
   |  4°                De 46 a 60 anos  |
   |  5°                Acima de 60 anos |
   ---------------------------------------

   TESTE: idades distribuidas em 3 para cada classe
          1° 15 15 15
          2° 16 25 30
          3° 31 40 45
          4° 46 50 60
          5° 60 80 100
*/

import 'dart:io';

void main() {
  List<int> idades = [];
  String? input;
  int idade = 0;
  int faixa1 = 0, faixa2 = 0, faixa3 = 0, faixa4 = 0, faixa5 = 0;

  for (int i = 0; i < 15; i++) {
    print("Digite a idade da pessoa ${i + 1}");
    input = stdin.readLineSync();
    if (input != null) {
      idade = int.parse(input);
    }
    idades.add(idade);
  }

  idades.forEach((item) {
    if (item <= 15) {
      faixa1++;
    } else if (item > 15 && item <= 30) {
      faixa2++;
    } else if (item > 30 && item <= 45) {
      faixa3++;
    } else if (item > 45 && item <= 60) {
      faixa4++;
    } else {
      faixa5++;
    }
  });

  print("Até 15 anos: $faixa1");
  print("De 16 a 30 anos: $faixa2");
  print("De 31 a 45 anos: $faixa3");
  print("De 46 a 60 anos: $faixa4");
  print("Acima de 60 anos: $faixa5");
}
