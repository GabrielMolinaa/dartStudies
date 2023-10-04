import 'dart:io';

void main() {
  File recebimentos = File("Recebimentos.csv");
  File clientes = File("Clientes.csv");
  String nome="";
   List<String> clientesAux = [];

  try {
    print("Digite a data de inicio (YYYY-MM-DD): ");
    String input = stdin.readLineSync()!;
    DateTime dataInicio = DateTime.parse(input);
    
    print("Digite a data limite (YYYY-MM-DD): ");
    input = stdin.readLineSync()!;
    DateTime dataLimite = DateTime.parse(input);

    List<String> leitor = recebimentos.readAsLinesSync();
    List<String> leitor2 = clientes.readAsLinesSync();
    
    for(int i = 1; i<leitor.length;i++) {
      String auxiliar = leitor[i].replaceAll(' ', '');
      List<String> recebimentosAux = auxiliar.split(',');
      String codigo = recebimentosAux[4];
      DateTime data2 = DateTime.parse(recebimentosAux[3]);
      DateTime dataAtual = DateTime.now();
      int diasAtraso = 0;
      if ((data2.isAfter(dataInicio) && data2.isBefore(dataLimite))) {
          if(data2.isBefore(dataAtual)){
            Duration atraso = dataAtual.difference(data2);
            diasAtraso = atraso.inDays;
          }
          leitor2.forEach((element) {
            clientesAux = element.split(',');
            if(clientesAux[0] == codigo){
              nome = clientesAux[1];
            }
          });
      
          stdout.write("Nome Cliente: $nome || ${leitor[i]} || Dias em Atraso: $diasAtraso\n");
      }

    };
  } catch (e) {
    print("Erro $e");
  }
}