import 'dart:io';

void main(){
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openRead();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  double preco = 0;

  for(int i = 1; i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    preco = double.tryParse(leitorAux[2])!;
    if(preco > 100){
      preco += 10;
      leitorAux[2] = preco.toString();
      leitor[i] = leitorAux.toString();
    }
  }

  arquivo.writeAsStringSync('');
  leitor.forEach((element) {
    element = element.replaceAll(RegExp(r'[ \[ \] ]'), '');
    arquivo.writeAsStringSync("${element}\n",mode: FileMode.writeOnlyAppend);
  });
}