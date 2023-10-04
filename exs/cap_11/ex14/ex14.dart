import 'dart:io';

void criarArquivos(){
  final estilista = ['numero, nome, nota1, nota2'];
  File arquivo = File('Arquivo.csv');
  arquivo.writeAsStringSync("$estilista\n");
  print("Arquivo Criado com sucesso!");
}

void incluirRegistros(){
  File arquivo = File("Arquivo.csv");
  arquivo.openSync();

  print("Digite o Número: ");
  String numero = stdin.readLineSync()!;
  if(verificaNumero(numero)){
    print("Digite o Nome: ");
    String nome = stdin.readLineSync()!;

    print("Digite a Nota 1: ");
    String nota1 = stdin.readLineSync()!;
    
    print("Digite a Nota 2: ");
    String nota2 = stdin.readLineSync()!;

    arquivo.writeAsStringSync("$numero, $nome, $nota1, $nota2\n",mode: FileMode.writeOnlyAppend);
  }else{
    print("Número já cadastrado!");
  }
}

void mostrarRegistros(){
  File arquivo = File("Arquivo.csv");
  arquivo.openSync();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  double nota1 = 0, nota2=0,media=0;
  for(int i = 1;i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    nota1 = double.parse(leitorAux[2]);
    nota2 = double.parse(leitorAux[3]);
    media = (nota1+nota2)/2;
    print("${leitor[i]} - MEDIA NOTAS: $media");
    media = 0;
  }
}

bool verificaNumero(String numero){
  File arquivo = File('Arquivo.csv');
  arquivo.openRead();
  List<String> numeroAux = [];
  List<String> leitor = arquivo.readAsLinesSync();
  for(int i = 1; i<leitor.length;i++){
    numeroAux = leitor[i].split(',');
    if(numeroAux[0] == numero){
      return false;
    }
  }
  return true;
}
void main(){

  int opcao;
  while(true){
    print("1. Criar");
    print("2. Incluir");
    print("3. Mostrar");
    print("4. Sair");
    print("Digite a opção desejada: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1:
        criarArquivos();
        break;
      case 2:
        incluirRegistros();
        break;
      case 3:
        mostrarRegistros();
        break;
      case 4:
        print("Saindo...");
        exit(1);
      default:
        print("Opção Inválida");
    }
  }
}