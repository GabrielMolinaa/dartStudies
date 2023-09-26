

import 'dart:io';

void main(){

  List alunos = [];
  double media = 0, mediaClasse = 0;
  String situacao;
  int cont1=0, cont2=0,cont3 = 0;  
  for(int i = 0; i<=6;i++){
    print("Digite o nome do ${i+1}° aluno: ");
    String nome = stdin.readLineSync()!;

    print("Digite a nota da 1° Prova de $nome");
    double nota1 = double.parse(stdin.readLineSync()!);

    print("Digite a nota da 2° Prova de $nome");
    double nota2 = double.parse(stdin.readLineSync()!);

    alunos.add([nome,nota1,nota2]);

  }

  print("\n\nRelatório de Notas");
  print("Aluno\t1°Prova\t2°Prova\tMédia\tSituação");
  
  alunos.forEach((element) {
    media = (element[1] + element[2])/2;
    mediaClasse += media;
    if(media > 7.0){
      situacao = 'Aprovado';
      cont1++;
    }else if(media < 7.0 && media > 5.0){
      situacao = 'Exame';
      cont2++;
    }else{
      situacao = 'Reprovado';
      cont3++;
    }
    print("${element[0]}\t${element[1]}\t${element[2]}\t${media}\t$situacao");
  });

  print("\nMédia da Classe = $mediaClasse");
  print("Percentual de Alunos Aprovados = %${(cont1/alunos.length)*100}");
  print("Percentual de alunos de exame = %${(cont3/alunos.length)*100}");
  print("Percentual de Alunos Reprovados = %${(cont2/alunos.length)*100}");
}