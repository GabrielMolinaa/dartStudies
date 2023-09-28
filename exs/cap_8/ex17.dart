import 'dart:io';

int calcDivisor(int numero1, int numero2) {
  int mdc = 0;

  while (numero2 != 0) {
    mdc = numero2;
    numero2 = numero1 % numero2;
    numero1 = mdc;
  }
  return mdc;
}

void main() {
  int resultado = 0;

  print("Digite o 1° número: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Digite o 2° número: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  resultado = calcDivisor(numero1, numero2);
  print("O máximo divisor comum(MDC) de $numero1 e $numero2 é: $resultado");
}
