import 'dart:io';

bool isTriangulo(List<int> valores) {
  if (valores[0] + valores[1] > valores[2] &&
      valores[0] + valores[2] > valores[1] &&
      valores[1] + valores[2] > valores[0]) {
    return true;
  } else {
    return false;
  }
}

String tipoTriangulo(List<int> valores) {
  if (valores[0] == valores[1] && valores[0] == valores[2]) {
    return 'Equilatero';
  } else if (valores[0] == valores[1] ||
      valores[0] == valores[2] ||
      valores[1] == valores[2]) {
    return 'Isosceles';
  } else {
    return 'Escaleno';
  }
}

void main() {
  List<int> valores = [];
  for (int i = 0; i < 3; i++) {
    print("Digite o ${i + 1} valor (maior que 0): ");
    int input = int.parse(stdin.readLineSync()!);
    if (input == 0) {
      print("Valor inválido!");
      exit(1);
    } else {
      valores.add(input);
    }
  }

  if (isTriangulo(valores)) {
    print(tipoTriangulo(valores));
  } else {
    print("Os valores não formam Triangulos");
  }
}
