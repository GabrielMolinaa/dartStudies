import 'dart:io';

double pesoIdeal(double altura, String sexo) {
  double peso;
  if (sexo == 'M' || sexo == 'm') {
    peso = 72.7 * altura - 58;
  } else if (sexo == 'F' || sexo == 'f') {
    peso = 62.1 * altura - 44.7;
  } else {
    print("Sexo Incorreto.");
    exit(1);
  }
  return peso;
}

void main() {
  print("Digite a sua altura(m):");
  double altura = double.parse(stdin.readLineSync()!);

  print("Digite o sexo [M] para Masculino ou [F] para Feminino");
  String sexo = stdin.readLineSync()!;

  print("Seu peso Ideal é : ${pesoIdeal(altura, sexo)} kg");
}
