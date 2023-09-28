import 'dart:io';

double media() {
  List<int> numeros = [];
  int numero;
  int soma = 0;
  while (true) {
    print("Digite um Número: ");
    numero = int.parse(stdin.readLineSync()!);
    if (numero < 0) {
      break;
    }
    numeros.add(numero);
  }

  numeros.forEach((element) {
    soma += element;
  });

  return (soma / numeros.length);
}

void main() {
  double medias = media();
  print("A média é $medias");
}
