import 'dart:io';

void main() {
  String frase;
  List<String> fraseASCII = [];
  List<int> descriptografar = [];
  late String fraseDescriptografada;
  print("Digite uma frase: ");
  frase = stdin.readLineSync()!;

  for (int i = 0; i < frase.length; i++) {
    int letraASCII = frase.codeUnitAt(i);
    fraseASCII.add(letraASCII.toString());
    fraseASCII.add(' ');
  }

  fraseASCII.forEach((element) {
    if (element != ' ') {
      descriptografar.add(int.parse(element));
    }
  });

  for (int i = 0; i < fraseASCII.length; i++) {
    fraseDescriptografada = String.fromCharCodes(descriptografar);
  }

  print(("Criptografada: ${fraseASCII.join('')}"));
  print(("Descriptografada: $fraseDescriptografada"));
}
