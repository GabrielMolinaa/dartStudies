import 'dart:io';
void main(){

  List<List<double>> notas = List.generate(15, (index) => List<double>.filled(5,0));
  List<String> nomes = [];
  double mediaGeral = 0;
  double mediaAluno = 0;
  List vetorFinal = [];
  String? situacao;

  for(int i = 0; i<15;i++){
    for(int j = 0; j<5;j++){
        print("Digite a Nota do Aluno [${i}] na Prova [${j}]");
        notas[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  for(int i = 0; i<15;i++){
    print("Digite o nome do ${i+1}° Aluno: ");
    nomes.add(stdin.readLineSync()!);
  }

  for(int i = 0;i<15;i++){
    for(int j =0;j<5;j++){
      mediaGeral += notas[i][j];
      mediaAluno += notas[i][j];
    }
    
    vetorFinal.add([nomes[i],mediaAluno]);
    mediaAluno = 0;
  }

  print(vetorFinal);
  print("Aluno\tMédia\tSituação");
  vetorFinal.forEach((element) {
    element[1] = element[1]/5;
    if(element[1] >= 7){
      situacao = 'Aprovado';
    } 
    if(element[1] < 7 && element[1] >= 5){
      situacao = 'Exame';
    }
    if(element[1] < 5){
      situacao = 'Reprovado';
    }

    print("${element[0]}\t${element[1]}\t$situacao");
  });

  print("\nMédia da classe: ${mediaGeral/nomes.length}");
}