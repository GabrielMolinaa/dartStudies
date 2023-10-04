class Aluno {
  late int codigo;
  late String nome;

  Aluno(this.codigo, this.nome);

  get getCodigo => this.codigo;
  set setCodigo(codigo) => this.codigo = codigo;

  get getNome => this.nome;
  set setNome(nome) => this.nome = nome;
}
