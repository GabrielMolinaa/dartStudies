import 'dart:io';

List<double> leAssinatura() {
  print("Bem-vindo ao detector automático de COH-PIAH.");
  double wal = 4.51;
  double ttr = 0.693;
  double hlr = 0.55;
  double sal = 70.82;
  double sac = 1.82;
  double pal = 38.5;

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
      if (frequencia[palavra] == 1) {
        contPalavrasUnicas--;
      }
      frequencia[palavra] = (frequencia[palavra] ?? 0) + 1;
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
      "Então resolveu ir brincar com a Máquina pra ser também imperador dos filhos da mandioca. Mas as três cunhas deram muitas risadas e falaram que isso de deuses era gorda mentira antiga, que não tinha deus não e que com a máquina ninguém não brinca porque ela mata. A máquina não era deus não, nem possuía os distintivos femininos de que o herói gostava tanto. Era feita pelos homens. Se mexia com eletricidade com fogo com água com vento com fumo, os homens aproveitando as forças da natureza. Porém jacaré acreditou? nem o herói! Se levantou na cama e com um gesto, esse sim! bem guaçu de desdém, tó! batendo o antebraço esquerdo dentro do outro dobrado, mexeu com energia a munheca direita pras três cunhas e partiu. Nesse instante, falam, ele inventou o gesto famanado de ofensa: a pacova.");
  int c = avaliaTextos(textos, parametros);
  print("O autor do texto ${c + 1} está infectado com COH-PIAH");
}
