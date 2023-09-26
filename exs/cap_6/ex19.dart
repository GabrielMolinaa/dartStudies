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

    vetor3.add(vetor1[i]*vetor2[i]);
  }

  print(vetor1);
  print("X");
  print(vetor2);
  print("=");
  print(vetor3);
}
