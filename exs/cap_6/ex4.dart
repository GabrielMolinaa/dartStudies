
import 'dart:math';


void main(){
  List<int> vetor = List.generate(15, (index) => Random().nextInt(30));
  //List<int> vetor = [10,10,10,30,30,30,10,10,30,30,30,10,10,30,30];

  for(int i = 0; i<vetor.length;i++){
    if(vetor[i] == 30){
      print("Valor ${vetor[i]} na posição: [${i+1}]");
    }
  }

}