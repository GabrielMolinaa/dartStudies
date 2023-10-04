import 'dart:io';
import 'Funcionario.dart';
import 'Dependente.dart';

List<Funcionario> cadastrarFuncionario(List<Funcionario> funcionarios) {
  print("Digite o número do Funcionário");
  int numeroFuncionaro = int.parse(stdin.readLineSync() ?? '0');
  if (!verificaFuncionario(funcionarios, numeroFuncionaro)) {
    print("Digite o nome do Funcionário: ");
    String nomeFuncionario = stdin.readLineSync() ?? '0';

    print("Digite o cargo do Funcionário: ");
    String cargoFuncionario = stdin.readLineSync() ?? '0';

    print("Digite o salário do Funcionário: ");
    double salarioFuncionario = double.parse(stdin.readLineSync() ?? '0');

    funcionarios.add(Funcionario(numeroFuncionaro, nomeFuncionario,
        cargoFuncionario, salarioFuncionario));
    print("Funcionário Cadastrado com Sucesso!");
  } else {
    print("Funcionário já cadastrado!");
  }

  return funcionarios;
}

List<Dependente> cadastrarDependentes(
    List<Funcionario> funcionarios, List<Dependente> dependentes) {
  late Funcionario funcionario;

  print("Digite o código do Funcionário para alocar o Dependente: ");
  int codigo = int.parse(stdin.readLineSync() ?? '0');

  if (verificaFuncionario(funcionarios, codigo)) {
    print("Digite a quantidade de dependentes: ");
    int quantidade = int.parse(stdin.readLineSync() ?? '0');
    for (int j = 0; j < quantidade; j++) {
      for (int i = 0; i < funcionarios.length; i++) {
        if (funcionarios[i].numeroFuncionario == codigo) {
          funcionario = funcionarios[i];
          break;
        }
      }

      print("Digite o nome do Dependente[${j + 1}]: ");
      String nome = stdin.readLineSync() ?? '0';
      dependentes.add(Dependente(funcionario, nome));
    }
    print("Dependentes Cadastrados com Sucesso!");
  } else {
    print("Funcionário não encontrado!");
  }
  return dependentes;
}

void mostrarBonus(
    List<Funcionario> funcionarios, List<Dependente> dependentes) {
  int cont = 0;

  funcionarios.forEach((element) {
    cont = quantidadeDependentes(element.numeroFuncionario, dependentes);
    print("\nNome Funcionário: ${element.nomeFuncionario}");
    print("Quantidade Depentendes: $cont");
    print("Bônus de Salário: %${cont * 2}");
    print("Salário Atual: R\$${element.salario}\n");
  });
}

List<Funcionario> excluirFuncionario(
    int codigo, List<Funcionario> funcionarios) {
  for (int i = 0; i < funcionarios.length; i++) {
    if (funcionarios[i].numeroFuncionario == codigo) {
      funcionarios.remove(funcionarios[i]);
      break;
    }
  }
  print("Funcionário Excluído com Sucesso!");

  return funcionarios;
}

List<Dependente> excluirDependentes(int codigo, List<Dependente> dependentes) {
  for (int i = 0; i < dependentes.length; i++) {
    if (dependentes[i].numeroFuncionario == codigo) {
      dependentes.remove(dependentes[i]);
    }
  }
  print("Dependentes Excluídos com Sucesso!");
  return dependentes;
}

void alteraSalario(List<Funcionario> funcionarios) {
  print("Digite o código do funcionario para alterar o salário: ");
  int codigo = int.parse(stdin.readLineSync() ?? '0');
  if (verificaFuncionario(funcionarios, codigo)) {
    print("Informe o novo salário: ");
    double novoSalario = double.parse(stdin.readLineSync() ?? '0');

    for (int i = 0; i < funcionarios.length; i++) {
      if (funcionarios[i].numeroFuncionario == codigo) {
        funcionarios[i].setSalario(novoSalario);
      }
    }
    print("Salário Alterado com Sucesso!");
  } else {
    print("Funcionário Inexistente!");
  }
}

bool verificaFuncionario(List<Funcionario> funcionarios, int codigo) {
  for (int i = 0; i < funcionarios.length; i++) {
    if (funcionarios[i].numeroFuncionario == codigo) {
      return true;
    }
  }
  return false;
}

int quantidadeDependentes(int codigo, List<Dependente> dependentes) {
  int cont = 0;

  dependentes.forEach((element) {
    if (element.numeroFuncionario == codigo) {
      cont++;
    }
  });
  return cont;
}

void main() {
  List<Funcionario> funcionarios = [];
  List<Dependente> dependentes = [];
  int opcao;

  while (true) {
    print("\n1. Cadastrar Funcionário");
    print("2. Mostrar Bônus Mensal de cada Funcionario");
    print("3. Excluir Funcionário");
    print("4. Alterar Salário de um Funcionário");
    print("0. Sair");
    print("Digite a Opção: ");
    opcao = int.parse(stdin.readLineSync() ?? '0');

    switch (opcao) {
      case 0:
        print("Saindo...");
        exit(1);
      case 1:
        funcionarios = cadastrarFuncionario(funcionarios);
        dependentes = cadastrarDependentes(funcionarios, dependentes);
        break;

      case 2:
        mostrarBonus(funcionarios, dependentes);
        break;

      case 3:
        print("Digite o código do funcionário para excluir: ");
        int codigo = int.parse(stdin.readLineSync() ?? '0');
        if (verificaFuncionario(funcionarios, codigo)) {
          funcionarios = excluirFuncionario(codigo, funcionarios);
          dependentes = excluirDependentes(codigo, dependentes);
        } else {
          print("Funcionário Inexistente!");
        }
        break;

      case 4:
        alteraSalario(funcionarios);
        break;

      default:
        print("Opção Inválida!");
    }
  }
}
