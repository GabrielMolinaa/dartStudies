// Faça um programa que receba quatro notas de um aluno, calcule
// e mostre a média aritmética das notas e a mensagem de aprovado
// ou reprovado, considerando para aprovação média 7

import 'dart:io';

void main() {
  List? notas = List.filled(4, 0);
  double media = 0;
  print("ATENÇÃO, COLOQUE AS NOTAS DE 0.0 À 10.0\n");
  for (int i = 0; i < notas.length; i++) {
    print("Digite a nota ${i + 1}");
    notas[i] = stdin.readLineSync();
  }

  notas.forEach((element) {
    media += double.parse(element as String);
  });

  if ((media / 4) >= 7) {
    print("Parabéns, você passou! Sua média foi ${media / 4}");
  } else {
    print("Try Again, você reprovou! Sua média foi ${media / 4}");
  }
}
