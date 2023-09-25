import 'dart:io';


void novoSalario(){
  double salario = 0;
  late double ajuste;
  print("Digite o seu salário atual: ");
  salario = double.parse(stdin.readLineSync()!);

  if(salario < 210){
    ajuste  = 0.15;
    salario = salario + salario*ajuste;
  }else if(salario > 600){
    ajuste = 0.05;
    salario = salario + salario*ajuste;
  }else{
    ajuste = 0.10;
    salario = salario + salario*ajuste;
  }

  print("\nSeu novo salário é: $salario");
  print("Ajuste de %$ajuste ");
}

void ferias(){
  
  late double ferias;
  print("Digite o seu salário: ");
  double salario = double.parse(stdin.readLineSync()!);

  ferias = salario + salario*(1/3);
  print("\nO valor de suas férias é: $ferias");
  

  
}

void decimoTerceiro(){

  print("Digite seu salário: ");
  double salario = double.parse(stdin.readLineSync()!);

  print("Digite o número de meses de trabalho na empresa [max-12]:");
  int meses = int.parse(stdin.readLineSync()!);

  double decimoTerceiro = (salario * meses)/12;
  print("\nSeu décimo terceiro é R\$$decimoTerceiro");  


}
void main(){
  
  int opcao = 0;
  while(opcao != 4){

  print("Menu de opções");
  print("1. Novo salário\n2. Férias\n3.Décimo terceiro\n4.Sair\n");
  print("Digite a opção desejada.");

  opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      
      case 1:
        novoSalario();
        break;
      
      case 2:
        ferias();
        break;
      
      case 3:
        decimoTerceiro();
        break;
      
      case 4:
        exit(1);

    }
  }
}