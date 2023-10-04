import 'dart:io';

void main() {
  File recebimentos = File('Recebimentos.csv');
  File clientes = File('Clientes.csv');
  List<String> clientesAux = [];
  List<String> recebimentosAux = [];
  bool clienteCadastrado = false;
  bool recebimentoExiste = false;

  print("Alteração de Recebimentos");

  print("Digite o código do cliente para alterar o Recebimento: ");
  String codigo = stdin.readLineSync()!;

  recebimentos.openSync();
  clientes.openSync();
  int aux2 = 0;

  try {
    List<String> leitor = clientes.readAsLinesSync();
    leitor.forEach((element) {
      clientesAux = element.split(',');
      if (clientesAux[0] == codigo) {
        clienteCadastrado = true;
      }
    });
    if (clienteCadastrado) {
      print("Cliente Encontrado!");
    } else {
      print("Cliente não encontrado!");
    }
  } catch (e) {
    print("Erro na Exclusão do Cliente $e");
  }

  if (clienteCadastrado) {
    try {
      List<String> leitor2 = recebimentos.readAsLinesSync();
      String auxiliar;

      leitor2.forEach((element) {
        auxiliar = element.replaceAll(' ', '');
        recebimentosAux = auxiliar.split(',');

        if (recebimentosAux[4] == codigo) {
          aux2 = leitor2.indexOf(element);
          recebimentoExiste = true;
        }
      });

      if (recebimentoExiste) {
        print("Digite o Novo Numero do Documento: ");
        int numeroDocumento = int.parse(stdin.readLineSync()!);
        print("Digite o Novo Valor do Documento: ");
        double valorDocumento = double.parse(stdin.readLineSync()!);
        print("Digite a Nova Data de emissão (YYYY-MM-DD): ");
        String dataEmissao = stdin.readLineSync()!;
        print("Digite a Nova Data de Vencimento (YYYY-MM-DD): ");
        String dataVencimento = stdin.readLineSync()!;

        leitor2[aux2] =
            "$numeroDocumento, $valorDocumento, $dataEmissao, $dataVencimento, $codigo";
        recebimentos.writeAsString('');
        leitor2.forEach((element) {
          recebimentos.writeAsStringSync("$element\n",
              mode: FileMode.writeOnlyAppend);
        });
        print("Recebimento Alterado com Suceso!");
      } else {
        print("Recebimento não encontrado!");
      }
    } catch (e) {
      print("Erro Inesperado! $e");
    }
  }
}
