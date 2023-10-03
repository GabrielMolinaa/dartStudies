import 'dart:io';

void main() {
  File arquivo = File('Clientes.csv');
  arquivo.open(mode: FileMode.writeOnlyAppend);

  print("Cadastro de Clientes\n");
  print("Digite o código do cliente: ");
  int codigo = int.parse(stdin.readLineSync()!);

  print("Digite o nome do cliente: ");
  String nome = stdin.readLineSync()!;

  print("Digite o endereço do cliente: ");
  String endereco = stdin.readLineSync()!;

  arquivo.writeAsStringSync("${codigo}, ${nome}, ${endereco}\n",
      mode: FileMode.append);
}
