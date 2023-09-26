

import 'dart:io';

void main(){
  
  List<List<int>> matriz = List.generate(2, (i) => List<int>.filled(4, 0));
  int count = 0, count2 = 0;
  int soma = 0;

  for(int i = 0; i<2;i++){
    for(int j = 0; j<4;j++){
      print("Digite o valor [${i}][${j}]");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for(int i = 0; i<2; i++){
    for(int j = 0; j<4;j++){
      if(matriz[i][j] > 12 && matriz[i][j] < 20){
        count++;
      }
      if(matriz[i][j] % 2 ==0 ){
        soma += matriz[i][j];
        count2++;
      }
    }
    print("Quantidade de elementos entre 12 e 20 Linha $i: $count");
    count = 0;
  }

  print("Média dos elementos pares: ${soma/count2}"); 


}