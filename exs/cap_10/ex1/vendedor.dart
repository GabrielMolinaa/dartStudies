class Vendedor {
  late int _codigo;
  late Map<int, double> _vendas = {};

  Vendedor(int codigo, Map<int, double> vendas) {
    this._codigo = codigo;
    this._vendas = vendas;
  }

  int get getCodigo => _codigo;
  // double totalVendas();
  // double vendaMes(int mes);

  bool tenhoVenda(int mes) {
    if (_vendas.containsKey(mes)) {
      return false;
    } else {
      return true;
    }
  }
}
