import 'dart:io';

void main() {
  late File arquivo;
  try {
    arquivo = File('PRODUTOS.DAT');
    final leitor = arquivo.readAsLinesSync();
    double preco = 0;
    int cont = 0;

    arquivo.writeAsStringSync(leitor[0]);

    for (int i = 1; i < leitor.length; i++) {
      final leitorAux = leitor[i].split(',');
      preco = double.tryParse(leitorAux[2]) ?? 0;

      if (preco < 200) {
        arquivo.writeAsStringSync('\n${leitor[i]}', mode: FileMode.append);
      } else {
        cont++;
      }
    }

    print("Foram Excluídos ${cont} Produto(s)!");
  } catch (e) {
    print("Erro ao ler ou escrever no arquivo: $e");
  }
}
