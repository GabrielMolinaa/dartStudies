class Disciplina {
  late int codigo;
  late String nome;
  late int cargaHoraria;

  Disciplina(this.codigo, this.nome, this.cargaHoraria);

  get getCodigo => this.codigo;
  set setCodigo(codigo) => this.codigo = codigo;

  get getNome => this.nome;
  set setNome(nome) => this.nome = nome;

  get getCargaHoraria => this.cargaHoraria;
  set setCargaHoraria(cargaHoraria) => this.cargaHoraria = cargaHoraria;
}
