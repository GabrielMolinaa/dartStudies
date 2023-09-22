import 'dart:io';

void main() {
  List pessoas = [];
  int maisCinquenta = 0, contAltura = 0, contPeso = 0;
  num somaAltura = 0;

  for (int i = 0; i < 25; i++) {
    print(
        "Digite a idade, altura[cm], peso[kg] da pessoa ${i + 1} separados por espaço");

    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');

    if (pessoa.length == 3) {
      try {
        int idade = int.parse(pessoa[0]);
        int altura = int.parse(pessoa[1]);
        double peso = double.parse(pessoa[2]);
        pessoas.add([idade, altura, peso]);
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    }
  }

  for (int i = 0; i < pessoas.length; i++) {
    if (pessoas[i][0] > 50) {
      maisCinquenta++;
    }
    if (pessoas[i][0] >= 10 && pessoas[i][0] <= 20) {
      contAltura++;
      somaAltura += pessoas[i][1];
    }
    if (pessoas[i][2] < 40) {
      contPeso++;
    }
  }

  print("Pessoas com idade Superior a 50 anos: $maisCinquenta");
  print(
      "Media das alturas das pessoas com idade entre 10-20 anos: ${somaAltura / contAltura}");
  print(
      "Porcentagem de pessoas com peso infeior a 40kg: %${(contPeso / pessoas.length) * 100}");
}
