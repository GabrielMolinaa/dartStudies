import 'dart:io';

List calcVetores(List vetor) {
  List<int> vetorA = [];
  List<int> vetorB = [];

  for (int i = 0; i < vetor.length; i++) {
    if (vetor[i] > 0) {
      vetorA.add(vetor[i]);
    } else if (vetor[i] <= 0) {
      vetorB.add(vetor[i]);
    }
  }
  return [vetorA, vetorB];
}

void main() {
  List<int> vetor = [];
  List vetorResultado = [];

  for (int i = 0; i < 10; i++) {
    print("Digite o ${i + 1}° Valor inteiro");
    vetor.add(int.parse(stdin.readLineSync()!));
  }
  vetorResultado = calcVetores(vetor);
  print("Vetor A: ${vetorResultado[0]}\nVetor B: ${vetorResultado[1]}");
}
