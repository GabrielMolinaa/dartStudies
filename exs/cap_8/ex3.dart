import 'dart:io';

int confereIguais(String cadeia1, String cadeia2) {
  if (cadeia1.length != cadeia2.length) {
    print("Palavras com tamanhos diferentes");
    return -1;
  }

  for (int i = 0; i < cadeia1.length; i++) {
    if (cadeia1[i] != cadeia2[i]) {
      print("Letra na pos[$i] Diferente");
      return i;
    }
  }
  print("Iguais");
  return 0;
}

void main() {
  print("Digite a primeira palavra: ");
  String cadeia1 = stdin.readLineSync()!;

  print("Digite a segunda palavra: ");
  String cadeia2 = stdin.readLineSync()!;

  print(confereIguais(cadeia1, cadeia2));
}
