import 'dart:io';

void main() {
  List pessoas = [];
  num somaIdadesOtimo = 0;
  int contRegular = 0, contOtimo = 0;
  double porcentagemBom = 0;

  for (int i = 0; i < 3; i++) {
    print("3 - Ótimo, 2 - Bom, 1 - Regular");
    print("Digite sua idade e opinião sobre o filme [$i]:");

    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');
    if (pessoa.length == 2) {
      try {
        int idade = int.parse(pessoa[0]);
        int opiniao = int.parse(pessoa[1]);

        pessoas.add([idade, opiniao]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    }
  }

  pessoas.forEach((element) {
    if (element[1] == 3) {
      contOtimo++;
      somaIdadesOtimo += element[0];
    }
    if (element[1] == 1) {
      contRegular++;
    }
    if (element[1] == 2) {
      porcentagemBom++;
    }
  });

  print(
      "Media das idades que responderam ótimo: ${somaIdadesOtimo / contOtimo}");
  print("Quantidade de Pessoas que responderam Regular: $contRegular");
  print(
      "Porcentagem que responderam bom: ${(porcentagemBom / pessoas.length) * 100}");
}
