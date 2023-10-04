import 'dart:io';

void cadastrarEstilista() {
  File estilista = File("Estilista.csv");
  estilista.openSync();

  print("Digite o código do estilista: ");
  String codigoEstilista = stdin.readLineSync()!;

  print("Digite o nome do estilista: ");
  String nomeEstilista = stdin.readLineSync()!;

  print("Digite o salário do estilista: ");
  double salarioEstilista = double.parse(stdin.readLineSync()!);

  if (verificaEstilista(codigoEstilista)) {
    estilista.writeAsStringSync(
        '$codigoEstilista, $nomeEstilista, $salarioEstilista\n',
        mode: FileMode.writeOnlyAppend);
    print("Estilista cadastrado com sucesso!");
  } else {
    print("Código Cliente já existente!");
  }
}

void cadastrarRoupa() {
  File roupa = File("Roupa.csv");
  roupa.openSync();

  print("Digite o código do Estilista: ");
  String codigoEstilista = stdin.readLineSync()!;
  if (!verificaEstilista(codigoEstilista)) {
    print("Digite o código da Estação: ");
    String codigoEstacao = stdin.readLineSync()!;

    if (!verificaEstacao(codigoEstacao)) {
      print("Digite o código da roupa: ");
      String codigoRoupa = stdin.readLineSync()!;

      print("Digite a descrição da roupa: ");
      String descricaoRoupa = stdin.readLineSync()!;
      descricaoRoupa = descricaoRoupa.replaceAll(',', '-');

      print("Digite o Ano: ");
      String ano = stdin.readLineSync()!;
      roupa.writeAsStringSync(
          '$codigoRoupa, ${descricaoRoupa}, $codigoEstilista, $codigoEstacao, $ano\n',
          mode: FileMode.writeOnlyAppend);
    } else {
      print("Estação não cadastrada!");
    }
  } else {
    print("Estilista não cadastrado!");
  }
}

void cadastrarEstacao() {
  File estacao = File('Estacao.csv');
  estacao.openSync();

  print("Digite o codigo da estação: ");
  String codigoEstacao = stdin.readLineSync()!;

  if (verificaEstacao(codigoEstacao)) {
    print("Digite o nome da estacao: ");
    String nomeEstacao = stdin.readLineSync()!;

    estacao.writeAsStringSync('$codigoEstacao, $nomeEstacao\n',
        mode: FileMode.writeOnlyAppend);
    print("Estação cadastrada com sucesso!");
  } else {
    print("Estação já existente!");
  }
}

void relatorioRoupas() {
  File roupa = File("Roupa.csv");
  File estilista = File("Estilista.csv");
  File estacao = File("Estacao.csv");

  estacao.openSync();
  roupa.openSync();
  estilista.openSync();

  List<String> roupaAux = [];
  List<String> estacaoAux = [];
  List<String> estilistaAux = [];
  String codigoEstacao = '';
  bool flag = false;
  print("Informe a estação para gerar o relatório de roupas: ");
  String estacaoNome = stdin.readLineSync()!;

  List<String> leitorEstacao = estacao.readAsLinesSync();
  for (int i = 1; i < leitorEstacao.length; i++) {
    estacaoAux = leitorEstacao[i].split(',');
    if (estacaoAux[1].trim() == estacaoNome) {
      codigoEstacao = estacaoAux[0];
      flag = true;
    } else {
      flag = false;
    }
  }

  if (flag) {
    List<String> leitorRoupa = roupa.readAsLinesSync();
    List<String> leitorEstilista = estilista.readAsLinesSync();
    for (int i = 1; i < leitorRoupa.length; i++) {
      roupaAux = leitorRoupa[i].split(',');
      if (roupaAux[3].trim() == codigoEstacao) {
        for (int j = 1; j < leitorEstilista.length; j++) {
          estilistaAux = leitorEstilista[j].split(',');
          if (roupaAux[2].trim() == estilistaAux[0]) {
            print("Nome:${estilistaAux[1]} - ${leitorRoupa[i]}");
            break;
          }
        }
      }
    }
  } else {
    print("Estação não encontrada!");
  }
}

bool verificaEstilista(String codigo) {
  File estilista = File("Estilista.csv");
  estilista.openRead();
  List<String> leitor = estilista.readAsLinesSync();
  List<String> auxiliar;
  for (int i = 0; i < leitor.length; i++) {
    auxiliar = leitor[i].split(',');
    if (auxiliar[0] == codigo) {
      return false;
    }
  }
  return true;
}

bool verificaEstacao(String codigo) {
  File estacao = File("Estacao.csv");
  estacao.openRead();
  List<String> leitor = estacao.readAsLinesSync();
  List<String> auxiliar;
  for (int i = 0; i < leitor.length; i++) {
    auxiliar = leitor[i].split(',');
    if (auxiliar[0] == codigo) {
      return false;
    }
  }
  return true;
}

void main() {
  int opcao = 0;

  while (true) {
    print("1. Cadastrar Estilista");
    print("2. Cadastrar Estação");
    print("3. Cadastrar Roupa");
    print("4. Gerar Relatório baseado na Estação");
    print("0. Sair do Programa");
    print("Digite a opção: ");
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 0:
        print("Saindo...");
        exit(1);

      case 1:
        cadastrarEstilista();
        break;

      case 2:
        cadastrarEstacao();
        break;

      case 3:
        cadastrarRoupa();
        break;

      case 4:
        relatorioRoupas();
        break;
      default:
        print("Opção Inválida!");
    }
  }
}
