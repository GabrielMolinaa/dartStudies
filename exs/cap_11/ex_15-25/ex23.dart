import 'dart:io';

void main() {
  late File arquivo;
  try {
    arquivo = File('PRODUTOS.DAT');
    List<String> leitor = arquivo.readAsLinesSync();

    print("Digite a letra inicial do produto:");
    String letraInicial = stdin.readLineSync()!;

    print("Digite o valor mínimo:");
    double valorMinimo = double.parse(stdin.readLineSync()!);

    print("Digite o valor máximo:");
    double valorMaximo = double.parse(stdin.readLineSync()!);

    print("Produtos encontrados:");

    for (int i = 0; i < leitor.length; i++) {
      final leitorAux = leitor[i].split(',');
      final nomeProduto = leitorAux[1];
      final preco = double.tryParse(leitorAux[2]) ?? 0;

      if ((nomeProduto.startsWith(letraInicial.toUpperCase()) || nomeProduto.startsWith(letraInicial.toLowerCase())) && preco >= valorMinimo && preco <= valorMaximo) {
        print("$nomeProduto - R\$${preco.toStringAsFixed(2)}");
      }
    }
  } catch (e) {
    print("Erro ao ler o arquivo: $e");
  }
}
