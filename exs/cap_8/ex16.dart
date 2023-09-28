import 'dart:io';

double soma(List<double> vetor) {
  double soma = 0;

  vetor.forEach((element) {
    soma += element;
  });
  return soma;
}

void main() {
  List<double> vetor = [];
  double somaResultado = 0;

  for (int i = 0; i < 20; i++) {
    print("Digite o ${i + 1}° Valor");
    vetor.add(double.parse(stdin.readLineSync()!));
  }

  somaResultado = soma(vetor);
  print("A Soma dos valores do vetor é: $somaResultado");
}
