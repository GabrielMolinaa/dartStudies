import 'dart:io';

void main() {
  String data;
  Map<int, String> mes = {
    01: 'Janeiro',
    02: 'Fevereiro',
    03: 'Março',
    04: 'Abril',
    05: 'Maio',
    06: 'Junho',
    07: 'Julho',
    08: 'Agosto',
    09: 'Setembro',
    10: 'Outubro',
    11: 'Novembro',
    12: 'Dezembro'
  };

  print("Digite uma data [DD/MM/AAAA]: ");
  data = stdin.readLineSync()!;

  List<String> lista = data.split('/');

  int aux = int.parse(lista[1]);
  String? aux2;
  aux2 = mes[aux];
  lista[1] = aux2.toString();
  print(lista.join('/'));
}
