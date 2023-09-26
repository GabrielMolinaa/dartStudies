import 'dart:io';
void main(){

  List<int> vetorA = [];
  List<int> vetorB = [];
  int i=0, j=4;
  double resultado = 0;
  for(int i = 0; i<5;i++){
    print("VETOR A - ${i+1} Valor: ");
    vetorA.add(int.parse(stdin.readLineSync()!));

    print("VETOR B - ${i+1} Valor: ");
    vetorB.add(int.parse(stdin.readLineSync()!));
  }

  for(i;i<5;i++){
    resultado += vetorA[i] - vetorB[j];
    j--;
  }

  print(vetorA);
  print(vetorB);
  print("Resultado das subtrações: $resultado");

}