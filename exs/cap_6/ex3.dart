

import 'dart:io';
import 'dart:math';


void main(){

List<int> codigoProdutos = List.generate(10, (index) => Random().nextInt(100));
List<int> quantidadeProdutos = List.generate(10, (index) => Random().nextInt(100));
late int codigoCliente, codigoProduto, quantidadeProduto, flag=0;

while(true){

print("Digite o seu código, o código do protudo e a quantidade desejada: ");
  String input = stdin.readLineSync()!;
  List<String> compra = input.split(' ');
  if (compra.length == 3) {
      try {
         codigoCliente = int.parse(compra[0]);
        if (codigoCliente == 0) {
          break;
        }
         codigoProduto = int.parse(compra[1]);
        
         quantidadeProduto = int.parse(compra[2]);
       
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    } else {
      print("Formato Inválido!");
    }


    for(int i = 0; i<codigoProdutos.length; i++){
      if(codigoProduto == codigoProdutos[i]){
        if(quantidadeProduto < quantidadeProdutos[i]){
          print("Compra do Produto $codigoProduto Realizada com Sucesso!");
          print("Quantidade Comprada: $quantidadeProduto");
          quantidadeProdutos[i] -= quantidadeProduto;
          break;
        }else{
          print("Não temos estoque suficientemente desta mercadoria!");
          break;
        }
      }else{
        flag = 1;
      }
      
    }

    if(flag == 1){
      print("Código Inexistente!");
      flag = 0;
    }

    print("// ESTOQUE //");
    print(codigoProdutos);
    print(quantidadeProdutos);
    print("\n");

}

}