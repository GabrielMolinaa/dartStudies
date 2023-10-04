import 'dart:io';

bool verificaCodigo(String codigo) {
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openRead();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  for (int i = 1; i < leitor.length; i++) {
    leitorAux = leitor[i].split(',');
    if (leitorAux[0] == codigo) {
      return true;
    }
  }
  return false;
}

void main() {
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openSync();

  print("Digite o codigo do produto que deseja excluir: ");
  String codigo = stdin.readLineSync()!;

  if (verificaCodigo(codigo)) {
    List<String> leitor = arquivo.readAsLinesSync();
    List<String> leitorAux = [];

    for (int i = 1; i < leitor.length; i++) {
      leitorAux = leitor[i].split(',');
      if (leitorAux[0] == codigo) {
        leitor.removeAt(i);
        print("Produto excluído com sucesso!");
        break;
      }
    }
    arquivo.writeAsStringSync('');
    leitor.forEach((element) {
      element = element.replaceAll(RegExp(r'[ \[ \] ]'), '');
      arquivo.writeAsStringSync("${element}\n", mode: FileMode.writeOnlyAppend);
    });
  }else{
    print("Código não encontrado!");
  }
}
