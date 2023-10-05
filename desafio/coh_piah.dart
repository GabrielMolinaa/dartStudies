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

  int cont = 1;
  while (true) {
    print("Digite 0 para sair");
    print("Adicione o $cont texto: ");
    String texto = stdin.readLineSync() ?? '0';
    if (texto == '0') {
      break;
    } else {
      cont++;
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
  List<String> textos = [];
  //leTextos();

  //textos.add("O, gato roeu a roupa. o Rei.");
  // textos.add(
  //     "Então resolveu ir brincar com a Máquina pra ser também imperador dos filhos da mandioca. Mas as três cunhas deram muitas risadas e falaram que isso de deuses era gorda mentira antiga, que não tinha deus não e que com a máquina ninguém não brinca porque ela mata. A máquina não era deus não, nem possuía os distintivos femininos de que o herói gostava tanto. Era feita pelos homens. Se mexia com eletricidade com fogo com água com vento com fumo, os homens aproveitando as forças da natureza. Porém jacaré acreditou? nem o herói! Se levantou na cama e com um gesto, esse sim! bem guaçu de desdém, tó! batendo o antebraço esquerdo dentro do outro dobrado, mexeu com energia a munheca direita pras três cunhas e partiu. Nesse instante, falam, ele inventou o gesto famanado de ofensa: a pacova.");
  textos.add(
      "Num fabulário ainda por encontrar será um dia lida esta fábula: A uma bordadora dum país longínquo foi encomendado pela sua rainha que bordasse, sobre seda ou cetim, entre folhas, uma rosa branca. A bordadora, como era muito jovem, foi procurar por toda a parte aquela rosa branca perfeitíssima, em cuja semelhança bordasse a sua. Mas sucedia que umas rosas eram menos belas do que lhe convinha, e que outras não eram brancas como deviam ser. Gastou dias sobre dias, chorosas horas, buscando a rosa que imitasse com seda, e, como nos países longínquos nunca deixa de haver pena de morte, ela sabia bem que, pelas leis dos contos como este, não podiam deixar de a matar se ela não bordasse a rosa branca. Por fim, não tendo melhor remédio, bordou de memória a rosa que lhe haviam exigido. Depois de a bordar foi compará-la com as rosas brancas que existem realmente nas roseiras. Sucedeu que todas as rosas brancas se pareciam exactamente com a rosa que ela bordara, que cada uma delas era exactamente aquela. Ela levou o trabalho ao palácio e é de supor que casasse com o príncipe. No fabulário, onde vem, esta fábula não traz moralidade. Mesmo porque, na idade de ouro, as fábulas não tinham moralidade nenhuma.");
  textos.add(
      "Voltei-me para ela; Capitu tinha os olhos no chão. Ergueu-os logo, devagar, e ficamos a olhar um para o outro... Confissão de crianças, tu valias bem duas ou três páginas, mas quero ser poupado. Em verdade, não falamos nada; o muro falou por nós. Não nos movemos, as mãos é que se estenderam pouco a pouco, todas quatro, pegando-se, apertando-se, fundindo-se. Não marquei a hora exata daquele gesto. Devia tê-la marcado; sinto a falta de uma nota escrita naquela mesma noite, e que eu poria aqui com os erros de ortografia que trouxesse, mas não traria nenhum, tal era a diferença entre o estudante e o adolescente. Conhecia as regras do escrever, sem suspeitar as do amar; tinha orgias de latim e era virgem de mulheres.");

  textos.add(
      "Senão quando, estando eu ocupado em preparar e apurar a minha invenção, recebi em cheio um golpe de ar; adoeci logo, e não me tratei. Tinha o emplasto no cérebro; trazia comigo a idéia fixa dos doidos e dos fortes. Via-me, ao longe, ascender do chão das turbas, e remontar ao Céu, como uma águia imortal, e não é diante de tão excelso espetáculo que um homem pode sentir a dor que o punge. No outro dia estava pior; tratei-me enfim, mas incompletamente, sem método, nem cuidado, nem persistência; tal foi a origem do mal que me trouxe à eternidade. Sabem já que morri numa sexta-feira, dia aziago, e creio haver provado que foi a minha invenção que me matou. Há demonstrações menos lúcidas e não menos triunfantes. Não era impossível, entretanto, que eu chegasse a galgar o cimo de um século, e a figurar nas folhas públicas, entre macróbios. Tinha saúde e robustez. Suponha-se que, em vez de estar lançando os alicerces de uma invenção farmacêutica, tratava de coligir os elementos de uma instituição política, ou de uma reforma religiosa. Vinha a corrente de ar, que vence em eficácia o cálculo humano, e lá se ia tudo. Assim corre a sorte dos homens.");

  int c = avaliaTextos(textos, parametros);
  print("O autor do texto ${c} está infectado com COH-PIAH");
}
