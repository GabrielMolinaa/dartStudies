import 'dart:io';

void main(){
  final campos = ['codigo, descricao, preco'];

  File arquivo = File('PRODUTOS.DAT');
  arquivo.writeAsStringSync("$campos\n");
  print("Arquivo Criado com Sucesso!");
}