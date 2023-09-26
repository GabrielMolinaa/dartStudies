import 'dart:io';
void main(){
  
  List vetor = [];

  for(int i = 0; i<10;i++){
    print("Digite o ${i+1}° Valor: ");
    vetor.add(double.parse(stdin.readLineSync()!));
  }

  vetor.forEach((element) {
    if(element > 0){
      stdout.write("$element ");
    }
  });
}