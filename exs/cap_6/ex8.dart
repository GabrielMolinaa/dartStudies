/*
Faça um programa que preencha um vetor com os nomes de sete alunos
e carregue outro vetor com a média final desses alunos. Calcule e mostre:
-> O nome do aluno com maior média(desconsiderar empates);

-> Para cada aluno não aprovado, com média > 7, mostrar quanto o aluno precisa
   tirar na prova de exame final para ser aprovado. Considerar que a média para
   aprovação no exame é 5.


*/

void main() {
  List<String> nomeAlunos = [
    'Jurandir',
    'Alberto',
    'Osvaldo',
    'Jorge',
    'Clara',
    'Julia',
    'Maria'
  ];

  List<double> notaAlunos = [4.2, 2.3, 8.2, 5.5, 6.0, 9.0, 7.1];

  List<List> geral = [];

  for (int i = 0; i < 7; i++) {
    List lista = [nomeAlunos[i], notaAlunos[i]];
    geral.add(lista);
  }

  geral.sort((a, b) => b[1].compareTo(a[1]));

  print(
      "Aluno(a) com maior média: ${geral[0][0]} com ${geral[0][1]} de média!\n");

  geral.forEach((element) {
    if (element[1] < 7) {
      print(
          "Para ${element[0]} passar precisa de: ${10 - element[1]} no EXAME!");
    } else {
      print("Parabéns ${element[0]}, APROVADO!");
    }
  });
}
