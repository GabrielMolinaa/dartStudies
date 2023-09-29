void main() {
  String entrada = 'aaabbbbaaa';
  int maiorValor = 0;
  int valor = 0;
  String letraAtual = '';
  String maiorLetra = '';

  for (int i = 1; i < entrada.length; i++) {
    if (entrada[i] == entrada[i - 1]) {
      valor++;
    } else {
      valor = 1;
      letraAtual = entrada[i];
    }

    if (valor > maiorValor) {
      maiorValor = valor;
      maiorLetra = letraAtual;
    }
  }

  print("Maior $maiorLetra, tamanho $maiorValor ");
}
