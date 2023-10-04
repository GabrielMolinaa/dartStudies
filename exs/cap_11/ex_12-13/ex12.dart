import 'dart:io';

/*
Estilista: codigo estilista, nome, salario
Roupa: codigo roupa, descricao, codigo estilista, codigo estacao, ano
Estação: codigo estacao, nome da estacao
*/

void main() {
  final estilista = ['codigo_estilista, nome_estilista, salario_estilista'];
  final roupa = ['codigo_roupa, descricao_roupa, codigo_estilista, codigo_estacao, ano'];
  final estacao = ['codigo_estacao, nome_estacao'];


  final estilistaFile = File('Estilista.csv');
  estilistaFile.writeAsStringSync('$estilista\n');


  final roupaFile = File('Roupa.csv');
  roupaFile.writeAsStringSync('$roupa\n');
  
  final estacaoFile = File('Estacao.csv');
  estacaoFile.writeAsStringSync('$estacao\n');

  print('Arquivos criados com sucesso: Estilista.csv, Roupa.csv, Estacao.csv');
}
