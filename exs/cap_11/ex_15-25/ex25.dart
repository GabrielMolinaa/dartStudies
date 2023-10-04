import 'dart:io';

void main() {
  late File arquivo;
  try {
    arquivo = File('PRODUTOS.DAT');
    final leitor = arquivo.readAsLinesSync();
    double percentualDesconto = 0;
    double valorMinimo = 0;
    double valorMaximo = 0;

    print("Informe o percentual de desconto:");
    percentualDesconto = double.parse(stdin.readLineSync()!);

    print("Informe o valor mínimo:");
    valorMinimo = double.parse(stdin.readLineSync()!);

    print("Informe o valor máximo:");
    valorMaximo = double.parse(stdin.readLineSync()!);

    arquivo.writeAsStringSync(leitor[0]);

    for (int i = 1; i < leitor.length; i++) {
      final leitorAux = leitor[i].split(',');
      double preco = double.tryParse(leitorAux[2]) ?? 0;

      if (preco >= valorMinimo && preco <= valorMaximo) {
        preco -= (preco * percentualDesconto / 100);
        leitorAux[2] = preco.toStringAsFixed(2);
        arquivo.writeAsStringSync('\n${leitorAux.join(',')}', mode: FileMode.append);
      } else {
        arquivo.writeAsStringSync('\n${leitor[i]}', mode: FileMode.append);
      }
    }

    print("Desconto aplicado a produtos dentro do intervalo!");
  } catch (e) {
    print("Erro ao ler ou escrever no arquivo: $e");
  }
}
