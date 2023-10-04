import 'Aluno.dart';
import 'Disciplina.dart';

class Matricula {
  late int anoLetivo;
  late int serie;
  late Aluno aluno;
  late Disciplina disciplina;
  late List<double> notas;

  Matricula(
      this.anoLetivo, this.serie, this.aluno, this.disciplina, this.notas);

  get getAnoLetivo => this.anoLetivo;
  set setAnoLetivo(anoLetivo) => this.anoLetivo = anoLetivo;

  get getSerie => this.serie;
  set setSerie(serie) => this.serie = serie;

  setNota(bimestre, nota) => this.notas[bimestre] = nota;
}
