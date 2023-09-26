import 'dart:io';
void main(){
  List vetorA = [];
  List vetorB = [];

  for(int i = 0; i<10;i++){
    print("Digite o ${i+1}° Valor: ");
    vetorA.add(double.parse(stdin.readLineSync()!));
  }

  vetorA.forEach((element) {
    if(element != 0 && element > 0){
      vetorB.add(element);
    }
  });
  
  //Remover do vetor
  //vetorA.removeWhere((element) => element == 0 || element < 0);
  print(vetorA);
  print(vetorB);

}