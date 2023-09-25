import 'dart:math';

void main(){
  
  final random = Random();

  Set<int> alunosLogica = Set.from(List.generate(15, (index) => random.nextInt(30)));
  Set<int> alunosProgramacao = Set.from(List.generate(10, (index) => random.nextInt(30)));
  //Set não permite elementos duplicados.

  Set<int> alunosComuns = alunosLogica.intersection(alunosProgramacao);


  print("Matrículas em comum: $alunosComuns");
  print("Alunos de Lógica: $alunosLogica");
  print("Alunos de Programação: $alunosProgramacao");
}