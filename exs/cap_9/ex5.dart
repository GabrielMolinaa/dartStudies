import 'dart:io';

void main() {
  String palavra1;
  String palavra2;

  print("Digite a primeira palavra");
  palavra1 = stdin.readLineSync()!;

  print("Digite a segunda palavra: ");
  palavra2 = stdin.readLineSync()!;

  List<String> lista1 = palavra1.split('')..sort();
  List<String> lista2 = palavra2.split('')..sort();

  if (lista1.join() == lista2.join()) {
    print("\"$palavra1\" é uma permutação de \"$palavra2\" ");
  } else {
    print("\"$palavra1\" não é uma permutação de \"$palavra2\" ");
  }
}
