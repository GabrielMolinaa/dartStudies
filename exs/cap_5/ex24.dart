import 'dart:io';


void main(){

int entrada = 1,maior=0,menor=0;

while(entrada!=0){

  print("Digite um número inteiro positivo: ");
  entrada = int.parse(stdin.readLineSync()!);

  if(entrada == 0){
    break;
  }

  if(entrada < 0){
    print("Valor Inválido");
  }

  if(maior < entrada){
    maior = entrada;
  }

  if((menor > entrada || menor == 0) && entrada > 0){
    menor = entrada;
  }
}

print("Maior Valor: $maior");
print("Menor Valor: $menor");

}