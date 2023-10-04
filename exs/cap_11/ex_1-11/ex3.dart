import 'dart:io';

void main() {
  File recebimentos = File('Recebimentos.csv');
  File clientes = File('Clientes.csv');
  bool clienteCadastrado = false;
  List<String> clienteAux = [];
  clientes.openRead();
  recebimentos.openSync();

  print("Incluir Recebimentos");
  print("Digite o código do cliente: ");
  String codigo = stdin.readLineSync()!;

  try {
    List<String> leitor = clientes.readAsLinesSync();

    leitor.forEach((element) {
      clienteAux = element.split(',');
      if (clienteAux[0] == codigo) {
        clienteCadastrado = true;
      }
    });
  } catch (e) {
    print("Erro na Leitura");
  }

  if (clienteCadastrado) {
    print("Digite o Numero do Documento: ");
    int numDoc = int.parse(stdin.readLineSync()!);

    print("Digite o Valor do Documento:");
    double valorDoc = double.parse(stdin.readLineSync()!);

    print("Digite a Data da emissão (YYYY-MM-DD)");
    String dataEmissao = stdin.readLineSync()!;

    print("Digite a Data Vencimento (YYYY-MM-DD)");
    String dataVencimento = stdin.readLineSync()!;

    recebimentos.writeAsStringSync(
        "$numDoc ,$valorDoc ,$dataEmissao ,$dataVencimento ,$codigo\n",
        mode: FileMode.append);
    print("Recebimento cadastrado");
  } else {
    print("Cliente não cadastrado");
  }
}
