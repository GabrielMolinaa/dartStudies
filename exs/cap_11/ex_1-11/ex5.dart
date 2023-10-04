import 'dart:io';

void main() {
  print("Alteração de CLientes");
  print("Digite o código do cliente a ser alterado: ");
  String codigo = stdin.readLineSync()!;

  File clientes = File("Clientes.csv");
  clientes.openSync();
  List<String> clientesAux = [];
  int aux = 0;
  bool clienteCadastrado = false;
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
      print("Digite o novo Código: ");
      int codigo = int.parse(stdin.readLineSync()!);

      print("Digite o novo Nome: ");
      String nome = stdin.readLineSync()!;

      print("Digite o novo endereço: ");
      String endereco = stdin.readLineSync()!;

      leitor[aux] = "$codigo, $nome, $endereco";

      clientes.writeAsString('');
      leitor.forEach((element) {
        clientes.writeAsStringSync("$element\n",
            mode: FileMode.writeOnlyAppend);
      });
    } else {
      print("Cliente não cadastrado!");
    }
  } catch (e) {
    print("Erro na leitura do arquivo!");
  }
}
