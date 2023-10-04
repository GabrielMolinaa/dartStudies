import 'Disciplina.dart';

class DisciplinaPratica extends Disciplina {
  late int cargaHorariaPratica;

  DisciplinaPratica(
    int codigo,
    String nome,
    int cargaHoraria,
    this.cargaHorariaPratica,
  ) : super(codigo, nome, cargaHoraria);

  get getCargaHorariaPratica => this.cargaHorariaPratica;
}
