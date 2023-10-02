import 'dart:io';
import 'Cliente.dart';

bool verificaCliente(List<Cliente> clientes,int codigo){

  for(var cliente in clientes){
    if(cliente.getNumeroCliente == codigo){
      return false;
    }
  }
  return true;
  
}

Cliente cadastraCliente(List<Cliente> clientes){
  int numero;
  late String nome;
  late String telefone = '';
  late String endereco = '';

  print("Digite o número do novo Cliente: ");
  numero = int.parse(stdin.readLineSync()!);

  if(verificaCliente(clientes, numero)){
    print("Digite o Nome do Cliente: ");
     nome = stdin.readLineSync()!;

    print("Digite o Telefone do Cliente: ");
     telefone = stdin.readLineSync()!;

    print("Digite o Endereço do cliente: ");
     endereco = stdin.readLineSync()!;

  }
    return Cliente(numero, nome, telefone, endereco);

}

void main(){
  List<Cliente> clientes = [];
  int opcao;


  while(true){
    print("Bem vindo ao cadastramento de contas!");
    print("1. Cadastrar CLiente");
    print("2. Imprime Contas");
    print("0. Sair do Programa");
    print("Digite a opcão: ");
    opcao = int.parse(stdin.readLineSync()!);
    if(opcao == 0){
      print("Saindo...");
      break;
    }
    switch(opcao){
      case 1:
          clientes.add(cadastraCliente(clientes));
        break;
      case 2:
        for(var cliente in clientes){
          cliente.getConta.imprimeConta();
        }
        
      default:
        print("Opção Inválida!");
    }
  }
  


}