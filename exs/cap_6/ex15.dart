import 'dart:io';
void main(){

  List nomeClientes = [];
  List qtdLocados = [];
  int aux;

  for(int i = 0; i<3;i++){
    print("Escreva o nome do ${i+1}° Cliente: ");
    String nome = stdin.readLineSync()!;
    print("Quantidade de DVDs Locados por $nome: ");
    int quantidade = int.parse(stdin.readLineSync()!);

    nomeClientes.add(nome);
    qtdLocados.add(quantidade);
  }

  print(nomeClientes);
  print(qtdLocados);

  print("\nCliente\t\tDVDs Grátis");
  for(int i = 0; i<nomeClientes.length;i++){
    if(qtdLocados[i] > 10){
      aux = (qtdLocados[i]/10).floor();
    }else{
      aux = 0;
    }
    print("${nomeClientes[i]}\t\t$aux");
  }
}