import 'dart:io';

void main() {
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openSync();
  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  double preco = 0;
  for (int i = 1; i < leitor.length; i++) {
    leitorAux = leitor[i].split(',');
    preco = double.tryParse(leitorAux[2])!;

    if (preco < 15) {
      print("Produto: ${leitor[i]}\n");
    }
  }
}
