
import 'dart:io';

void main(){

  List<List<int>> matriz = List.generate(6, (index) => List<int>.filled(3,0));
  int maiorValor = matriz[0][0], linhaMaior = 0, colunaMaior = 0;
  int menorValor = 1, linhaMenor = 0, colunaMenor = 0;

  for(int i = 0; i<6;i++){
    for(int j = 0; j<3;j++){
        print("Digite o valor [${i}][${j}]");
        matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for(int i = 0; i<6;i++){
    for(int j = 0; j<3;j++){
      if(matriz[i][j] > maiorValor){
        maiorValor = matriz[i][j];
        linhaMaior = i;
        colunaMaior = j;
      }
      if(matriz[i][j] <= menorValor){
        menorValor = matriz[i][j];
        linhaMenor = i;
        colunaMenor = j;
      }
    }
  }

  print("Maior Valor: $maiorValor Posição: matriz[$linhaMaior][$colunaMaior]");
  print("Menor Valor: $menorValor Posição: matriz[$linhaMenor][$colunaMenor]");


}