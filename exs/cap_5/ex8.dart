import 'dart:io';

void main() {
  List pessoas = [];
  int aux1 = 0, aux2 = 0, aux3 = 0, aux4 = 0;
  num somaIdade = 0;

  for (int i = 0; i < 20; i++) {
    print(
        "Informe:\nIdade - Peso[kg] - Altura[cm] - Cor dos Olhos[A-P-V-C] - Cor dos Cabelos[P-C-L-R]");
    stdout.write("Digite as informações separadas por espaço:");

    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');

    if (pessoa.length == 5) {
      try {
        int idade = int.parse(pessoa[0]);
        double peso = double.parse(pessoa[1]);
        int altura = int.parse(pessoa[2]);
        String corOlhos = pessoa[3];
        String corCabelos = pessoa[4];

        pessoas.add([idade, altura, peso, corOlhos, corCabelos]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    }
  }

  pessoas.forEach((element) {
    if (element[0] > 50 && element[2] < 60) {
      aux1++;
    }
    if (element[1] < 150) {
      aux2++;
      somaIdade += element[0];
    }
    if (element[3] == 'A') {
      aux3++;
    }
    if (element[4] == 'R' && element[3] != 'A') {
      aux4++;
    }
  });

  print("\nPessoas com idade superior 50 anos e peso inferior a 60: $aux1");
  print(
      "Media das idades das pessoas com menos de 1.50 metros: ${somaIdade / aux2}");
  print(
      "Porcentagem de pessoas com olhos azuis: %${(aux3 / pessoas.length) * 100}");
  print("Quantidade de pessoas ruivas que não tem olhos azuis: $aux4");
}
