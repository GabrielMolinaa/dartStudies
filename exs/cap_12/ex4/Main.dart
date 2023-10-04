import 'dart:io';

import 'Disciplina.dart';
import 'Aluno.dart';
import 'DisciplinaPratica.dart';
import 'Matricula.dart';

List<Disciplina> cadastrarDisciplina(List<Disciplina> disciplinas) {
  print("Cadastro de Disciplina");

  print("Digite o código da Disciplina: ");
  int codigo = int.parse(stdin.readLineSync()!);

  print("Digite o nome da Disciplina: ");
  String nome = stdin.readLineSync()!;

  print("Digite a carga horária geral da Disciplina: ");
  int cargaHoraria = int.parse(stdin.readLineSync()!);

  print("Disciplina Prática? [S/N]");
  String pratica = stdin.readLineSync()!;

  if (pratica == 'S') {
    print("Digite a carga horária pratica da Disciplina:");
    int cargaHorariaPratica = int.parse(stdin.readLineSync()!);
    disciplinas.add(
        DisciplinaPratica(codigo, nome, cargaHoraria, cargaHorariaPratica));
  } else {
    disciplinas.add(Disciplina(codigo, nome, cargaHoraria));
  }

  return disciplinas;
}

List<Aluno> cadastrarAluno(List<Aluno> alunos) {
  print("\nCadastrar Aluno");

  print("Digite o código do Aluno: ");
  int codigo = int.parse(stdin.readLineSync()!);

  print("Digite o nome do Aluno: ");
  String nome = stdin.readLineSync()!;

  alunos.add(Aluno(codigo, nome));
  return alunos;
}

List<Matricula> matricularAluno(List<Matricula> matriculas, List<Aluno> alunos,
    List<Disciplina> disciplinas) {
  Aluno aluno;
  Disciplina disciplina;
  print("\nMatricular Aluno");

  print("Digite o Ano Letivo: ");
  int anoLetivo = int.parse(stdin.readLineSync()!);

  print("Digite a Série");
  int serie = int.parse(stdin.readLineSync()!);

  print("Digite o código do aluno a ser matriculado: ");
  int codigoAluno = int.parse(stdin.readLineSync()!);

  if (verificaAluno(alunos, codigoAluno)) {
    aluno = obtemAluno(alunos, codigoAluno);
    print("Digite o código da Disciplina: ");
    int codigoDisciplina = int.parse(stdin.readLineSync()!);

    if (verificaDisciplina(disciplinas, codigoDisciplina)) {
      disciplina = obtemDisciplina(disciplinas, codigoDisciplina);
      List<double> notas = [0, 0, 0, 0];
      matriculas.add(Matricula(anoLetivo, serie, aluno, disciplina, notas));
    } else {
      print("Disciplina não cadastrada!");
    }
  } else {
    print("Aluno não cadastrado!");
  }
  return matriculas;
}

List<Matricula> lancarNotas(List<Matricula> matriculas) {
  print("\nLançar Notas");
  print("Informe o código do aluno:");
  int codigoAluno = int.parse(stdin.readLineSync()!);
  print("Informe o código da disciplina: ");
  int codigoDisciplina = int.parse(stdin.readLineSync()!);

  if (verificaAlunoMatriculado(matriculas, codigoAluno, codigoDisciplina)) {
    print("Informe o Ano Letivo: ");
    int anoLetivo = int.parse(stdin.readLineSync()!);

    print("Informe o Bimestre: ");
    int bimestre = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < matriculas.length; i++) {
      if ((matriculas[i].aluno.getCodigo == codigoAluno) &&
          (matriculas[i].disciplina.getCodigo == codigoDisciplina) &&
          (matriculas[i].getAnoLetivo == anoLetivo)) {
        print("Digite a nota do $bimestre° bimestre");
        double nota = double.parse(stdin.readLineSync()!);
        matriculas[i].setNota(bimestre - 1, nota);
      }
    }
  } else {
    print("Matricula Inexistente!");
  }
  return matriculas;
}

void mostraBoletim(List<Matricula> matriculas) {
  List<List<String>> boletim = [];
  print("Digite o código do aluno: ");
  int codigoAluno = int.parse(stdin.readLineSync()!);

  print("Digite o ano Letivo: ");
  int anoLetivo = int.parse(stdin.readLineSync()!);

  String nome = '';
  double media = 0;

  for (int i = 0; i < matriculas.length; i++) {
    if ((matriculas[i].aluno.getCodigo == codigoAluno) &&
        (matriculas[i].getAnoLetivo == anoLetivo)) {
      matriculas[i].notas.forEach((element) {
        media += element;
      });

      nome = matriculas[i].aluno.getNome;
      if (matriculas[i].disciplina is DisciplinaPratica) {
        DisciplinaPratica disciplinaPratica =
            matriculas[i].disciplina as DisciplinaPratica;
        media = matriculas[i].notas[0] +
            matriculas[i].notas[1] * 2 +
            matriculas[i].notas[2] +
            matriculas[i].notas[3] * 2;
        boletim.add([
          matriculas[i].disciplina.getNome,
          matriculas[i].disciplina.getCargaHoraria.toString(),
          disciplinaPratica.getCargaHorariaPratica.toString(),
          matriculas[i].notas.toString(),
          (media / 4).toString()
        ]);
      } else {
        boletim.add([
          matriculas[i].disciplina.getNome,
          matriculas[i].disciplina.getCargaHoraria.toString(),
          '0',
          matriculas[i].notas.toString(),
          (media / 4).toString()
        ]);
      }
      media = 0;
    }
  }
  print("\nCodigo: $codigoAluno Nome: ${nome}");
  print("Ano: $anoLetivo");
  boletim.forEach((element) {
    print(element.join('\t'));
  });
}

bool verificaAluno(List<Aluno> alunos, int codigo) {
  for (int i = 0; i < alunos.length; i++) {
    if (alunos[i].getCodigo == codigo) {
      return true;
    }
  }
  return false;
}

bool verificaDisciplina(List<Disciplina> disciplinas, int codigo) {
  for (int i = 0; i < disciplinas.length; i++) {
    if (disciplinas[i].getCodigo == codigo) {
      return true;
    }
  }
  return false;
}

Aluno obtemAluno(List<Aluno> alunos, int codigo) {
  int index = 0;
  for (int i = 0; i < alunos.length; i++) {
    if (alunos[i].getCodigo == codigo) {
      index = alunos.indexOf(alunos[i]);
    }
  }
  return alunos[index];
}

Disciplina obtemDisciplina(List<Disciplina> disciplinas, int codigo) {
  int index = 0;
  for (int i = 0; i < disciplinas.length; i++) {
    if (disciplinas[i].getCodigo == codigo) {
      index = disciplinas.indexOf(disciplinas[i]);
    }
  }
  return disciplinas[index];
}

bool verificaAlunoMatriculado(
    List<Matricula> matriculas, int codigoAluno, int codigoDisciplina) {
  for (int i = 0; i < matriculas.length; i++) {
    if ((matriculas[i].aluno.getCodigo == codigoAluno) &&
        (matriculas[i].disciplina.getCodigo == codigoDisciplina)) {
      return true;
    }
  }
  return false;
}

void main() {
  int opcao;
  List<Disciplina> disciplinas = [];
  List<Aluno> alunos = [];
  List<Matricula> matriculas = [];

  while (true) {
    print("1. Cadastrar Disciplinas Oferecidas na Escola (práticas ou não)");
    print("2. Cadastrar alunos");
    print("3. Matricular aluno em uma disciplina qualquer");
    print("4. Lançar notas de um aluno");
    print("5. Mostrar Boletim do aluno");
    print("Digite a Opção: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        disciplinas = cadastrarDisciplina(disciplinas);
        break;
      case 2:
        alunos = cadastrarAluno(alunos);
        break;

      case 3:
        matriculas = matricularAluno(matriculas, alunos, disciplinas);
        break;

      case 4:
        matriculas = lancarNotas(matriculas);
        break;

      case 5:
        mostraBoletim(matriculas);
        break;

      default:
        print("Opção Inválida!");
        break;
    }
  }
}
