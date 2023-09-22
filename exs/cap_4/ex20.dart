import 'dart:io';

void main() {
  int idade;
  String categoria;

  print("Digite a idade do nadador: ");
  String? input = stdin.readLineSync();
  idade = int.parse(input as String);

  if (idade < 5) {
    print("Sem categoria disponível!");
    exit(0);
  }

  if (idade > 5 && idade <= 7) {
    categoria = "Infantil";
  } else if (idade > 7 && idade <= 10) {
    categoria = "Juvenil";
  } else if (idade > 10 && idade <= 15) {
    categoria = "Adolescente";
  } else if (idade > 15 && idade <= 30) {
    categoria = "Adulto";
  } else {
    categoria = "Sênior";
  }

  print("Sua caregoria é a $categoria");
}
