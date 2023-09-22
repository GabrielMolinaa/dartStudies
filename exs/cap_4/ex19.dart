import 'dart:io';

void main() {
  double altura, pesoIdeal;
  String? sexo;

  print("Digite a sua altura em cm ex:[180cm]: ");
  String? input = stdin.readLineSync();
  altura = double.parse(input as String);

  print("Digite o seu Sexo [M] ou [F]:");
  sexo = stdin.readLineSync();

  if (sexo == 'M') {
    pesoIdeal = (72.2 * altura / 100) - 58;
  } else {
    pesoIdeal = (62.1 * altura / 100) - 44.7;
  }

  print("Seu peso ideal é de: $pesoIdeal");
}
