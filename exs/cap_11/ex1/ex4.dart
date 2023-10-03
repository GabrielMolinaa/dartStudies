import 'dart:io';

void main() {
  File recebimentos = File('Recebimentos.csv');
  File clientes = File('Clientes.csv');
  List<String> clientesAux = [];
  List<String> recebimentosAux = [];
  bool clienteCadastrado = false;
  bool recebimentoExiste = false;

  print("Exclusão de Clientes e Recebimentos");

  print("Digite o código do cliente para excluir: ");
  String codigo = stdin.readLineSync()!;

  recebimentos.openSync();
  clientes.openSync();
  int aux = 0;
  int aux2 = 0;

  try {
    List<String> leitor = clientes.readAsLinesSync();
    leitor.forEach((element) {
      clientesAux = element.split(',');
      if (clientesAux[0] == codigo) {
        aux = leitor.indexOf(element);
        clienteCadastrado = true;
      }
    });
    if (clienteCadastrado) {
      leitor.removeAt(aux);
      clientes.delete();

      leitor.forEach((element) {
        clientes.writeAsStringSync("$element\n",
            mode: FileMode.writeOnlyAppend);
      });
      print("Cliente excluído com sucesso!");
    } else {
      print("Cliente não encontrado!");
    }
  } catch (e) {
    print("Erro na Exclusão do Cliente $e");
  }

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
      leitor2.removeAt(aux2);
      recebimentos.delete();
      leitor2.forEach((element) {
        recebimentos.writeAsStringSync("$element\n",
            mode: FileMode.writeOnlyAppend);
      });
      print("Recebimento Excluído com Suceso!");
    } else {
      print("Recebimento não encontrado!");
    }
  } catch (e) {
    print("Recebimentos Excluídos com sucesso!");
  }
}
