import 'dart:io';

void main(){
  File arquivo = File("PRODUTOS.DAT");
  arquivo.openSync();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];

  for(int i = 1;i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    if(double.tryParse(leitorAux[2])! > 500){
        print("Descrição Produto[$i] Preço[R\$ ${leitorAux[2].trim()}]: ${leitorAux[1]}");
    }
  }
}