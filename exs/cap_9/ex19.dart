import 'dart:io';

void main() {
  String frase;
  List<String> aux = [];
  Map<String, String> map = {'a': '1', 'e': '2', 'i': '3', 'o': '4', 'u': '5'};
  print("Digite uma frase");
  frase = stdin.readLineSync()!;
  aux = frase.split('');
  int aux2 = 0;

  for (var element in aux) {
    if (map.containsKey(element)) {
      aux[aux2] = map[element].toString();
    }
    aux2++;
  }
  print(aux.join(''));
}
