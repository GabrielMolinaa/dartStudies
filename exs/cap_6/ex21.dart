import 'dart:io';
void main(){

  List<int> vetor = [];
  List<int> vetor2 = [];

  for(int i =0;i<30;i++){
    print("Digite o ${i+1}° Valor: ");
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  vetor.forEach((element) {
    if(element == 0){
      vetor2.add(1);
    }else{
      vetor2.add(element);
    }
  });

  print(vetor);
  print(vetor2);


}