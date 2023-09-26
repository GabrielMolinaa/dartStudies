import 'dart:io';

void main(){

  List alunos = [];
  double media = 0;

  for(int i = 0; i<8;i++){
    print("Digite o nome do ${i+1}° aluno: ");
    String input = stdin.readLineSync()!;
    
    print("Digite a nota do ${input} ");
    double nota = double.parse(stdin.readLineSync()!);

    alunos.add([input,nota]);
  }

  print("Relatório de notas");
  print("Aluno\tNota");

  alunos.forEach((element) {
    media += element[1];
    print("${element[0]}\t${element[1]}");
  });

  print("Media da classe = ${media/alunos.length}");
}
