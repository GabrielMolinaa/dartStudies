import 'dart:io';

void main(){

List<int> totalVendasVendedor = [];
List<double> percentualComissao = [];
List<String> nomeVendedores = [];
List valorComissoes = [];
double totalVendas = 0;


for(int i = 0;i<3;i++){
  print("Digite o total de vendas do vendedor ${i+1}");
  totalVendasVendedor.add(int.parse(stdin.readLineSync()!));
  totalVendas += totalVendasVendedor[i]; 
  
  print("Digite o percentual de comissão do vendedor ${i+1}");
  percentualComissao.add(double.parse(stdin.readLineSync()!));

  print("Digite o nome do vendedor ${i+1}");
  nomeVendedores.add(stdin.readLineSync()!);

 
 valorComissoes.add([[totalVendasVendedor[i]*percentualComissao[i]/100],[nomeVendedores[i]]]);
}
print("\nRelatório de Valores à Receber");
for(int i = 0; i<nomeVendedores.length; i++){
  print("Vendedor: ${nomeVendedores[i]} - Valor à receber: ${valorComissoes[i][0]}");
  
}

valorComissoes.sort((a,b) => a[0][0] > b[0][0] ? 1: -1);
print("\n\nTotal das Vendas: $totalVendas");
print("Maior Valor a Receber: ${valorComissoes[valorComissoes.length-1][0]}, Nome: ${valorComissoes[valorComissoes.length-1][1]}");
print("Menor Valor a Receber: ${valorComissoes[0][0]}, Nome: ${valorComissoes[0][1]}");





}

