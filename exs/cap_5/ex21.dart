import 'dart:io';

void main() {
  int voto;
  int cand1 = 0, cand2 = 0, cand3 = 0, cand4 = 0, nulo = 0, branco = 0;
  int totalVotos = 0;
  do {
    print("Digite Seu Voto [1-6]");
    voto = int.parse(stdin.readLineSync()!);

    switch (voto) {
      case 1:
        totalVotos++;
        cand1++;
      case 2:
        totalVotos++;
        cand2++;
      case 3:
        totalVotos++;
        cand3++;
      case 4:
        totalVotos++;
        cand4++;
      case 5:
        totalVotos++;
        nulo++;
      case 6:
        totalVotos++;
        branco++;
      default:
        print("Código Invalido!");
    }
  } while (voto != 0);

  print("Votos Candidato 1: $cand1");
  print("Votos Candidato 2: $cand2");
  print("Votos Candidato 3: $cand3");
  print("Votos Candidato 4: $cand4");
  print("Votos Nulos: $nulo");
  print("Votos Branco: $branco");
  print("Nulos sobre o total de votos: %${(nulo / totalVotos) * 100}");
  print("Brancos sobre o total de votos: %${(branco / totalVotos) * 100}");
}
