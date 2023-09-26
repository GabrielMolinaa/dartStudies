import 'dart:io';
void main(){

  List<int> vetor = [];
  List<int> pares = [];
  List<int> impares = [];

  for(int i = 0; i<10;i++){
    print("Digite o número ${i+1}: ");
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  vetor.forEach((element) {
    if(element % 2 == 0){
      pares.add(element);
    }else{
      impares.add(element);
    }
  });

print(pares);
print(impares);
}