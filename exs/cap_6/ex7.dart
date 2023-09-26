 import 'dart:io';
void main(){

List<double> vetor = [];
int numNegativos = 0;
double somaPositivos = 0;

for(int i =0; i<10;i++){
  print("Digite um número Real: pos[$i]");
  vetor.add(double.parse(stdin.readLineSync()!));
}

vetor.forEach((element) {
  if(element < 0){
    numNegativos++;
  }else{
    somaPositivos += element;
  }

});

print("Quantidade de números negativos: $numNegativos");
print("Soma dos números positivos: $somaPositivos");


}