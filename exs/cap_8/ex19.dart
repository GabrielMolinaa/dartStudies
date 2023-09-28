void interseccao(List<int> vetor1, List<int> vetor2) {
  List<int> interseccao = [];

  for (int i = 0; i < vetor1.length; i++) {
    if (vetor1.contains(vetor2[i])) {
      interseccao.add(vetor2[i]);
    }
  }

  print("Intersecção: $interseccao");
}

void main() {
  List<int> vetor1 = [1, 0, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> vetor2 = [2, 90, 6, 8, 10, 12, 14, 16, 18, 20];

  interseccao(vetor1, vetor2);
}
