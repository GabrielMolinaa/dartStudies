import 'dart:io';

List<double> leAssinatura() {
  print("Bem-vindo ao detector automático de COH-PIAH.");
  double wal = 4.79;
  double ttr = 0.72;
  double hlr = 0.56;
  double sal = 80.5;
  double sac = 2.5;
  double pal = 31.6;

  return [wal, ttr, hlr, sal, sac, pal];
}

List<String> leTextos() {
  List<String> textos = [];
  while (true) {
    print("Digite 0 para sair");
    print("Adicione um texto: ");
    String texto = stdin.readLineSync() ?? '0';
    if (texto == '0') {
      break;
    } else {
      textos.add(texto);
    }
  }
  return textos;
}

List<String> separaSentencas(String texto) {
  List<String> sentencas = texto.split(RegExp(r'[.!?]+'));
  if (sentencas.isNotEmpty && sentencas.last.isEmpty) {
    sentencas.removeLast();
  }
  return sentencas;
}

List<String> separaFrases(String sentenca) {
  List<String> frases = sentenca.split(RegExp(r'[,:;]+'));
  return frases;
}

List<String> separaPalavras(String frase) {
  frase = frase.trim();
  return frase.split(' ');
}

int numeroPalavrasUnicas(List<String> palavras) {
  Map<String, int> frequencia = {};
  int contPalavrasUnicas = 0;

  palavras.forEach((element) {
    String palavra = element.toLowerCase();

    if (frequencia.containsKey(palavra)) {
        contPalavrasUnicas--;
    } else {
      frequencia[palavra] = 1;
      contPalavrasUnicas++;
    }
  });
  return contPalavrasUnicas;
}

int numeroPalavrasDiferentes(List<String> palavras) {
  Set<String> palavrasDiferentes = {};

  palavras.forEach((element) {
    String palavra = element.toLowerCase();
    palavrasDiferentes.add(palavra);
  });

  return palavrasDiferentes.length;
}

double abs(double numero) {
  return numero < 0 ? -numero : numero;
}

double comparaAssinaturas(as_a, as_b) {
  double soma = 0;

  for (int i = 0; i < 6; i++) {
    soma = soma + abs((abs(as_a[i]) - abs(as_b[i])));
  }
  return soma / 6;
}

List<double> calculaAssinatura(texto) {
  List<String> sentencas = separaSentencas(texto);
  List<String> frases = [];
  List<String> palavras = [];
  int somaSentenca = 0;
  int somaPalavra = 0;
  int somaFrase = 0;

  sentencas.forEach((element) {
    somaSentenca += element.length;
    List<String> frasesAux = separaFrases(element);

    frasesAux.forEach((element2) {
      frases.add(element2);
    });
  });

  frases.forEach((element) {
    somaFrase += element.length;
    List<String> palavraAux = separaPalavras(element);

    palavraAux.forEach((element2) {
      somaPalavra += element2.length;
      palavras.add(element2);
    });
  });

  double tamMedioPalavras = somaPalavra / palavras.length;
  double relTypeToken = numeroPalavrasDiferentes(palavras) / palavras.length;
  double hapax = numeroPalavrasUnicas(palavras) / palavras.length;
  double tamMedioSentencas = somaSentenca / sentencas.length;
  double compSentenca = frases.length / sentencas.length;
  double tamMedioFrase = somaFrase / frases.length;

  print(
      "$tamMedioPalavras, $relTypeToken, $hapax, $tamMedioSentencas, $compSentenca, $tamMedioFrase");
  return [
    tamMedioPalavras,
    relTypeToken,
    hapax,
    tamMedioSentencas,
    compSentenca,
    tamMedioFrase
  ];
}

int avaliaTextos(List<String> textos, List<double> assCp) {
  List<double> comparacoes = [];

  textos.forEach((element) {
    List<double> assinaturaTexto = calculaAssinatura(element);
    comparacoes.add(comparaAssinaturas(assinaturaTexto, assCp));
  });

  double menorComparacao = comparacoes[0];
  int infectado = 1;

  for (int i = 1; i < comparacoes.length; i++) {
    if (comparacoes[i] < menorComparacao) {
      infectado = i;
    }
  }
  return infectado;
}

void main() {
  List<double> parametros = leAssinatura();
  //List<String> textos = leTextos();
  List<String> textos = [];
  //textos.add("O, gato roeu a roupa. o Rei.");
  textos.add(
      "Muito além, nos confins inexplorados da região mais brega da Borda Ocidental desta Galáxia, há um pequeno sol amarelo e esquecido. Girando em torno deste sol, a uma distancia de cerca de 148 milhões de quilômetros, há um planetinha verde-azulado absolutamente insignificante, cujas formas de vida, descendentes de primatas, são tão extraordinariamente primitivas que ainda acham que relógios digitais são uma grande ideia.");
  int c = avaliaTextos(textos, parametros);
  print("O autor do texto ${c + 1} está infectado com COH-PIAH");
}
