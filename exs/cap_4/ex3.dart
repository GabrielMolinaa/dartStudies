import 'dart:io';

void main() {
  double num1 = 0, num2 = 0;

  print("Digite o primeiro número: ");
  String? input = stdin.readLineSync();
  num1 = double.parse(input as String);

  print("Digite o segundo número: ");
  input = stdin.readLineSync();
  num2 = double.parse(input as String);

  stdout.write("O menor número é: ");
  if (num1 < num2) {
    print(num1);
  } else {
    print(num2);
  }
}
