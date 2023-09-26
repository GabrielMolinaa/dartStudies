import 'dart:math';
void main(){

  List<int> vetor = List.generate(15, (index) => Random().nextInt(20));
  int maiorValor = vetor[0], menorValor = vetor[0], indiceMaior = 0, indiceMenor = 0;

  for(int i = 0; i<vetor.length;i++){
    
    if(vetor[i] > maiorValor){
      maiorValor = vetor[i];
      indiceMaior = i;
    }
    if(vetor[i]<menorValor){
      menorValor = vetor[i];
      indiceMenor = i;
    }
  }
  print(vetor);
  print("Maior número do Vetor: $maiorValor Posição: $indiceMaior");
  print("Menor número do Vetor: $menorValor Posição: $indiceMenor");

}