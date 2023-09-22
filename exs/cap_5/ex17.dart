import 'dart:io';

void main() {
  List pesquisa = [];
  int? numCanal, qtdAssistindo = 0;
  int somaAudiencia = 0;
  do {
    print(
        "Digite o número do Canal e o número de pessoas assistindo [0 para sair]: ");
    String input = stdin.readLineSync()!;
    List<String> pessoa = input.split(' ');
    if (pessoa.length == 2) {
      try {
        numCanal = int.parse(pessoa[0]);
        if (numCanal == 0) {
          break;
        }
        qtdAssistindo = int.parse(pessoa[1]);

        pesquisa.add([numCanal, qtdAssistindo]);
        somaAudiencia += qtdAssistindo;
      } catch (e) {
        print(
            "Erro ao converter os valores. Certifique-se de que você forneceu números válidos.");
      }
    } else {
      print("Formato Inválido!");
    }
  } while (numCanal != 0);

  pesquisa.forEach((element) {
    print(
        "Audiencia canal ${element[0]}: %${(element[1] / somaAudiencia) * 100}");
  });
}
