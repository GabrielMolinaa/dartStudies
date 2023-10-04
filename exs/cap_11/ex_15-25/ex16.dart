import 'dart:io';

bool verificaCodigo(String codigo){
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openRead();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  for(int i = 1;i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    if(leitorAux[0] == codigo){
      return false;
    }
  }
  return true;
}

void main(){
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openSync();

  print("Digite o código: ");
  String codigo = stdin.readLineSync()!;
  
  if(verificaCodigo(codigo)){
    
    print("Digite a descrição: ");
    String descricao = stdin.readLineSync()!;
    descricao = descricao.replaceAll(',','-');

    print("Digite o preço: ");
    String preco = stdin.readLineSync()!;

    arquivo.writeAsStringSync('$codigo, $descricao, $preco\n',mode: FileMode.writeOnlyAppend);
  }else{
    print("Código já existente!");
  }
}