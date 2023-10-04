import 'dart:io';

void main(){
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openSync();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];

  for(int i = 1;i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    if(leitorAux[1].startsWith('M') ||leitorAux[1].startsWith('m')){
      print(leitorAux);
    }
  }

}