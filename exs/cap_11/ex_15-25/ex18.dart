import 'dart:io';

void main(){
  File arquivo = File('PRODUTOS.DAT');
  arquivo.openSync();

  List<String> leitor = arquivo.readAsLinesSync();
  List<String> leitorAux = [];
  double aumento = 0;
  
  for(int i = 1;i<leitor.length;i++){
    leitorAux = leitor[i].split(',');
    aumento = double.tryParse(leitorAux[2])!+ (double.tryParse(leitorAux[2])! * 0.15);
    leitorAux[2] = aumento.toString();
    leitor[i] = leitorAux.toString();
  }

  arquivo.writeAsStringSync('');
  leitor.forEach((element) {
    element = element.replaceAll(RegExp(r'[ \[ \] ]'), '');
    arquivo.writeAsStringSync("${element}\n",mode: FileMode.writeOnlyAppend);
  });

}