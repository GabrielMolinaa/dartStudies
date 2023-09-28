import 'dart:io';

List<String> leNomes() {
  List<String> nomes = [];
  for (int i = 0; i < 30; i++) {
    print("Digite o nome do ${i + 1}° Aluno: ");
    nomes.add(stdin.readLineSync()!);
  }
  return nomes;
}

List<List<double>> leNotas(List<String> nomes) {
  List<List<double>> matriz =
      List.generate(30, (index) => List<double>.filled(4, 0));

  for (int i = 0; i < 30; i++) {
    for (int j = 0; j < 4; j++) {
      print("Aluno[${nomes[i]}] Prova[${j + 1}]: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }
  return matriz;
}

List<double> mediaAritmetica(List<List<double>> notas) {
  double soma = 0;
  List<double> mediasAlunos = [];

  for (int i = 0; i < 30; i++) {
    for (int j = 0; j < 4; j++) {
      soma += notas[i][j];
    }
    mediasAlunos.add((soma / 4));
    soma = 0;
  }
  return mediasAlunos;
}

List<String> recuperacao(List<String> nomes, List<double> mediaAlunos) {
  List<String> recuperacao = [];
  for (int i = 0; i < 30; i++) {
    if (mediaAlunos[i] < 6) {
      recuperacao.add(nomes[i]);
    }
  }
  return recuperacao;
}

void main() {
  List<String> nomes = leNomes();
  List<List<double>> notas = leNotas(nomes);
  List<double> mediasAlunos = mediaAritmetica(notas);
  List<String> alunosRecuperacao = recuperacao(nomes, mediasAlunos);

  alunosRecuperacao.forEach((element) => print("${element} - Recuperação "));
}
