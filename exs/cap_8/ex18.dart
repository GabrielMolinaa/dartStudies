import 'dart:io';

void primos() {
  int totalDivisores;

  for (int i = 100; i < 110; i++) {
    totalDivisores = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        totalDivisores++;
      }
    }

    if (totalDivisores == 2) {
      stdout.write(" $i ");
    }
  }
}

void main() {
  primos();
}
