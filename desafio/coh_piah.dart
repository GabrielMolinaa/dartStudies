import 'dart:io';

double leitor() {
  double valor = double.parse(stdin.readLineSync() ?? '0');
  return valor;
}

List<double> leAssinatura() {
  print("Informe a assinatura típica de um aluno infectado:");
  print("Digite o tamanho médio de palavra: ");
  double wal = leitor();

  print("Digite a relação Type-Token: ");
  double ttr = leitor();

  print("Digite a Razão Hapax Legomana: ");
  double hlr = leitor();

  print("Digite o tamanho médio de sentença: ");
  double sal = leitor();

  print("Digite a complexidade média da sentença: ");
  double sac = leitor();

  print("Digite o tamanho médio de frase: ");
  double pal = leitor();

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
  List<String> sentencas = texto.split(RegExp(r'[. ! ?]'));
  return sentencas;
}

List<String> separaFrases(String sentenca) {
  List<String> frases = [];

  frases = sentenca.split(RegExp('r[, : ;]'));

  return frases;
}

List<String> separaPalavras(String frase) {
  return frase.split('');
}

int numeroPalavrasUnicas(List<String> palavras) {
  Map<String, int> contagemPalavras = {};

  for (String palavra in palavras) {
    if (contagemPalavras.containsKey(palavra)) {
      contagemPalavras[palavra] = (contagemPalavras[palavra] ?? 0) + 1;
    } else {
      contagemPalavras[palavra] = 1;
    }
  }

  int contPalavrasUnicas = 0;
  for (int contagem in contagemPalavras.values) {
    if (contagem == 1) {
      contPalavrasUnicas++;
    }
  }

  return contPalavrasUnicas;
}

int numeroPalavrasDiferentes(List<String> palavras) {
  List<String> palavrasDiferentes = [];
  int cont = 0;
  palavras.forEach((element) {
    if (!palavrasDiferentes.contains(element)) {
      palavrasDiferentes.add(element);
      cont++;
    }
  });
  return cont;
}

double comparaAssinaturas() {
  return 0;
}

void main() {
  print("Bem-vindo ao detector automático de COH-PIAH.");
  List<double> parametros = leAssinatura();
  List<String> textos = leTextos();
  List<String> sentencas = separaSentencas(textos[1]);
  List<String> frases = [];
  List<String> palavras = [];
  int palavrasUnicas = 0;
  int palavrasDiferentes = 0;

  sentencas.forEach((element) {
    frases.addAll(separaFrases(element));
  });

  frases.forEach((element) {
    palavras.addAll(separaPalavras(element));
  });

  print(palavras);
  palavrasUnicas = numeroPalavrasUnicas(palavras);
  print(palavrasUnicas);
  palavrasDiferentes = numeroPalavrasDiferentes(palavras);
  print(palavrasDiferentes);
}
