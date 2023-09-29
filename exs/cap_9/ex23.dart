import 'dart:io';

void main() {
  String cadeia;
  String subCadeia;
  int cont = 0;
  print("Digite uma cadeia: ");
  cadeia = stdin.readLineSync()!;

  print("Digite uma subcadeia: ");
  subCadeia = stdin.readLineSync()!;

  if (subCadeia.length > cadeia.length) {
    print("Subcadeia maior que a cadeia!");
    exit(1);
  }

  if (cadeia.contains(subCadeia)) {
    int posicao = cadeia.indexOf(subCadeia);

    while (posicao != -1) {
      cont++;
      posicao = cadeia.indexOf(subCadeia, posicao + subCadeia.length);
    }

    print("A subcadeia aparece $cont vez(es) na cadeia");
  } else {
    print("A subcadeia não está contida na cadeia");
  }
}
