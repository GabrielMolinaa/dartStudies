import 'dart:io';

int verificaPares(List<int> vetor) {
  int cont = 0;

  vetor.forEach((element) {
    if (element % 2 == 0) {
      cont++;
    }
  });

  return cont;
}

void main() {
  List<int> vetor = [];
  int cont = 0;

  for (int i = 0; i < 15; i++) {
    print("Digite o ${i + 1}° Valor");
    vetor.add(int.parse(stdin.readLineSync()!));
  }
  cont = verificaPares(vetor);
  print("A Quantidade de números pares no vetor é: $cont");
}
