import 'dart:io';

void main() {
  int idade;
  double peso;
  int indiceIdade, indicePeso;

  print("Digite sua idade: ");
  String? input = stdin.readLineSync();
  idade = int.parse(input as String);

  print("Digite seu peso:");
  input = stdin.readLineSync();
  peso = double.parse(input as String);

  var matriz = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
  ];

  if (idade < 20) {
    indiceIdade = 0;
  } else if (idade > 50) {
    indiceIdade = 2;
  } else {
    indiceIdade = 1;
  }

  if (peso < 60) {
    indicePeso = 0;
  } else if (peso > 90) {
    indicePeso = 2;
  } else {
    indicePeso = 1;
  }

  print("Seu grupo de risco é o ${matriz[indiceIdade][indicePeso]}");
}
