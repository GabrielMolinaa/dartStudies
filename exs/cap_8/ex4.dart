import 'dart:io';
import 'dart:math';

void calculaVolume(double raio) {
  double volume = (4 / 3) * pow(raio, 3);

  print("O volume da esfera é de: $volume m³");
}

void main() {
  print("Digite o raio da esfera: ");
  double raio = double.parse(stdin.readLineSync()!);
  calculaVolume(raio);
}
