import 'dart:io';
void main(){

  List vetor1 = [];
  List vetor2 = [];
  List vetor3 = [];

  for(int i = 0; i<10;i++){
    print("VETOR 1 - POS[${i+1}]: ");
    vetor1.add(int.parse(stdin.readLineSync()!));
    print("VETOR 2 - POS[${i+1}]: ");
    vetor2.add(int.parse(stdin.readLineSync()!));

  }

  vetor3.addAll(vetor1);
  vetor3.addAll(vetor2);

  print(vetor3);
  vetor3.sort((a, b) => b > a ? 1: -1);
  print(vetor3);


}