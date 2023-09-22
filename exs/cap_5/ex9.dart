import 'dart:io';

void main() {
  List pessoas = [];
  num somaIdades = 0;
  int cont = 0, cont2 = 0;

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite Idade, Peso[kg], Altura[cm] separadas por espaço:");

    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');

    if (pessoa.length == 3) {
      try {
        int idade = int.parse(pessoa[0]);
        double peso = double.parse(pessoa[1]);
        int altura = int.parse(pessoa[2]);

        pessoas.add([idade, peso, altura]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    }
  }

  pessoas.forEach((element) {
    somaIdades += element[0];

    if (element[1] > 90 && element[2] < 150) {
      cont++;
    }
    if (element[2] > 190) {
      if (element[0] > 10 && element[0] < 30) {
        cont2++;
      }
    }
  });

  print("Media das idades: ${somaIdades / pessoas.length}");
  print("Pessoas com peso superior a 90kg e altura inferior a 1.50m: $cont");
  print("Pessoas com idade entre 10-30 com mais de 1.9m: $cont2");
}
