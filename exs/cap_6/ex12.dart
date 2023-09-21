/*
Faça um programa que receba cinco números e mostre a saída a seguir:

'Digite o 1 numero
 5
 Digite o 2 numero
 3
 Digite o 3 numero
 2
 Digite o 4 numero
 0
 Digite o 5 numero
 2
 
 Os números digitados foram:
 5 + 3 + 2 + 0 + 2 = 12'


*/
import 'dart:io';

void main() {
  List<int> numeros = [];
  int soma = 0;
  for (int i = 0; i < 5; i++) {
    print("Digite o ${i + 1} numero");
    String? input = stdin.readLineSync();
    numeros.add(int.parse(input as String));
  }

  print("Os números digitados foram: ");
  numeros.forEach((element) {
    soma += element;
    stdout.write("$element + ");
  });

  stdout.write("= $soma");
}
