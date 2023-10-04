import 'dart:io';

void main(){
File recebimentos = File("Recebimentos.csv");
File clientes = File("Clientes.csv");
List<String> clientesAux = [];
List<String> recebimentosAux = [];
bool clienteCadastrado = false;

print("Consulta de Recebimento");
print("Digite o codigo do cliente para consultar: ");
String codigo = stdin.readLineSync()!;


  try {
    List<String> leitorClientes = clientes.readAsLinesSync();
    leitorClientes.forEach((element) {
      clientesAux = element.split(',');
      if (clientesAux[0] == codigo) {
        clienteCadastrado = true;
      }
    });
    if (clienteCadastrado) {
      List<String> leitorRecebimentos = recebimentos.readAsLinesSync();
      String auxiliar;

      leitorRecebimentos.forEach((element) {
        auxiliar = element.replaceAll(' ', '');
        recebimentosAux = auxiliar.split(',');

        if (recebimentosAux[4] == codigo) {
            print(recebimentosAux.join(' '));
        }
      });


    } else {
      print("Cliente não encontrado!");
    }
  } catch (e) {
    print("Erro Inesperado! $e");
  }

  

}