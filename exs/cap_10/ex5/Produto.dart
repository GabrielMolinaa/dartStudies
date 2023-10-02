class Produto{
  late int _codigo;
  late String _descricao;
  late double _valorUnitario;
  late int _quantidadeEstoque;


  Produto(int codigo,String descricao, double valorUnitario, int quantidadeEstoque){
    this._codigo = codigo;
    this._descricao = descricao;
    this._valorUnitario = valorUnitario;
    this._quantidadeEstoque = quantidadeEstoque;

  }


  int get getCodigo => this._codigo;
  String get getDescricao => this._descricao;
  double get getValorUnitario => this._valorUnitario;
  int get getQuantidadeEstoque => this._quantidadeEstoque;


  set setDescricao(String novaDescricao) => this._descricao = novaDescricao;
  set setValorUnitario(double value) => this._valorUnitario = value;
  set setQuantidadeEstoque(int value) => this._quantidadeEstoque = value;


}