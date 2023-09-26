void main(){

  List<int> primeiroVetor = [4,7,5,8,2,15,9,6,10,11];
  List<int> segundoVetor = [3,4,5,8,2];

  List<int> primeiroVetorResultante = [];
  List<int> segundoVetorResultante = [];

  int soma = 0;
  int cont = 0;

  for(int i = 0; i<primeiroVetor.length; i++){
    if(primeiroVetor[i] % 2 == 0){
      soma = primeiroVetor[i];
      
      for(int j = 0; j<segundoVetor.length; j++){
        soma += segundoVetor[j];
      }
      primeiroVetorResultante.add(soma);
      soma = 0;
    }

    if(primeiroVetor[i] % 2 != 0){
      for(int j = 0; j<segundoVetor.length; j++){
        if(primeiroVetor[i] % segundoVetor[j] == 0){
          cont++;
        }
      }
      segundoVetorResultante.add(cont);
      cont = 0;
    }
  }

  print(primeiroVetorResultante);
  print(segundoVetorResultante);

}