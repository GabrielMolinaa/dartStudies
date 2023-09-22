import "dart:io";

void main() {
  double nota1 = 0, nota2 = 0, media = 0;

  print("Digite a primeita nota: ");
  String? input = stdin.readLineSync();
  nota1 = double.parse(input as String);

  print("Digite a segunda nota: ");
  input = stdin.readLineSync();
  nota2 = double.parse(input as String);

  media = ((nota1 + nota2) / 2);

  if (media < 4) {
    print("Reprovado!");
  } else if (media > 7) {
    print("Aprovado!");
  } else {
    print("Exame!");
  }
}
