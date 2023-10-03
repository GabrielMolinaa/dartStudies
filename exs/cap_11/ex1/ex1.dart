import 'dart:io';

void main() {
  final clientesObj = [
    {'Cod_Cli': 1, 'Nome': 'João', 'Endereco': 'Rua A'},
    {'Cod_Cli': 2, 'Nome': 'Maria', 'Endereco': 'Rua B'},
  ];

  final recebimentosObj = [
    {
      'Num_Doc': 101,
      'Valor_doc': 100.0,
      'Data_Emissao': '2023-10-02',
      'Data_Vencimento': '2023-11-02',
      'Cod_Cli': 1
    },
    {
      'Num_Doc': 102,
      'Valor_doc': 150.0,
      'Data_Emissao': '2023-10-02',
      'Data_Vencimento': '2023-11-02',
      'Cod_Cli': 2
    },
  ];

  final clientesFile = File('Clientes.csv');
  clientesFile.writeAsStringSync('Cod_Cli, Nome, Endereco\n');
  for (final cliente in clientesObj) {
    clientesFile.writeAsStringSync(
        '${cliente['Cod_Cli']}, ${cliente['Nome']}, ${cliente['Endereco']}\n',
        mode: FileMode.append);
  }

  final recebimentosFile = File('Recebimentos.csv');
  recebimentosFile.writeAsStringSync(
      'Num_Doc, Valor_doc, Data_Emissao, Data_Vencimento, Cod_Cli\n');
  for (final recebimento in recebimentosObj) {
    recebimentosFile.writeAsStringSync(
        '${recebimento['Num_Doc']}, ${recebimento['Valor_doc']}, ${recebimento['Data_Emissao']}, ${recebimento['Data_Vencimento']}, ${recebimento['Cod_Cli']}\n',
        mode: FileMode.append);
  }

  print('Arquivos criados com sucesso: Clientes.csv e Recebimentos.csv');
}
