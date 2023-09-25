import 'dart:io';


void main(){


int idade = 1, altura=0;
late double media = 0;
late int cont = 0;

while(true){
  
  print("Digite sua Idade e altura(cm) :");
  String input = stdin.readLineSync()!;
  List<String> pessoa = input.split(' ');
  if (pessoa.length == 2) {
      try {
        idade = int.parse(pessoa[0]);
        if (idade <= 0) {
          break;
        }
        altura = int.parse(pessoa[1]);
        
        if(idade > 50){
          media += altura;
          cont++;
        }
       
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    } else {
      print("Formato Inválido!");
    }
}

print("A média das alturas das pesoas com mais de 50 anos é: ${media/cont}");
}