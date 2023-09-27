import 'dart:io';

void main() {
  List<int> idadeAluno = [];
  List<int> codigoDisciplina = [];
  List<List<int>> matriz = List.generate(8, (index) => List<int>.filled(5, 0));
  int cont = 0, soma = 0, cont2 = 0;

  for (int i = 0; i < 8; i++) {
    print("Digite a idade do ${i + 1}° aluno: ");
    idadeAluno.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    print("Digite o código da ${i + 1}° Disciplina: ");
    codigoDisciplina.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < idadeAluno.length; i++) {
    for (int j = 0; j < codigoDisciplina.length; j++) {
      print(
          "Digite a quantidade de prova do ${i + 1}° Aluno na disciplina ${j + 1}: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print(
      "Escolha a disciplina para verificar alunos com idade entre 18 e 25 anos que fizera mais de duas provas: ");
  int codigo = int.parse(stdin.readLineSync()!);
  int index = codigoDisciplina.indexOf(codigo);
  if (index != -1) {
    for (int i = 0; i < 8; i++) {
      if ((idadeAluno[i] > 18 && idadeAluno[i] < 25) &&
          (matriz[i][index] > 2)) {
        cont++;
      }
    }
  } else {
    print("Código de Disciplina Inexistente!");
  }
  print(
      "Alunos entre 18 e 25 que fizeram mais de duas provas na disciplina [$codigo]: $cont\n\n");

  print(
      "Escolha a disciplina para ver os alunos que fizeram menos de três provas:");
  codigo = int.parse(stdin.readLineSync()!);
  index = codigoDisciplina.indexOf(codigo);

  if (index != -1) {
    for (int i = 0; i < 8; i++) {
      if (matriz[i][index] < 3) {
        print("Aluno [${i + 1}]\t Disciplina [$codigo]");
      }
    }
  } else {
    print("Código de Disciplina Inexistente!");
  }

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 5; j++) {
      if (matriz[i][j] == 0) {
        soma += idadeAluno[i];
        cont2++;
        break;
      }
    }
  }

  print(
      "Média de idade dos alunos que não fizeram nenhuma prova em alguma disciplina: ${soma / cont2}");
}
