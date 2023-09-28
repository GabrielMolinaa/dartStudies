import 'dart:io';

void convSegundos(int horas, int minutos, int segundos) {
  int resultado = (((horas * 60) + minutos) * 60) + segundos;

  print(
      "$horas h,$minutos min e $segundos s correspondem a $resultado segundos.");
}

void main() {
  print("Conversão para segundos");
  print("Digite as horas: ");
  int horas = int.parse(stdin.readLineSync()!);

  print("Digite os minutos");
  int minutos = int.parse(stdin.readLineSync()!);

  print("Digite os segundos:");
  int segundos = int.parse(stdin.readLineSync()!);

  convSegundos(horas, minutos, segundos);
}
