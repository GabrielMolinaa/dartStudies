
import 'dart:io';

void main(){

  List produtos = [];
  int cont1 = 0, cont2 = 0;
  List<String> nomes = [];
  double somaCaros = 0;

  for(int i=0;i<5;i++){
    print("Digite o nome do ${i+1}° Produto: ");
    String nome = stdin.readLineSync()!;

    print("Digite o preço do(a) $nome: ");
    double preco = double.parse(stdin.readLineSync()!);

    produtos.add([nome,preco]);
  }

  for(int i = 0;i<produtos.length;i++){
    if(produtos[i][1] < 50){
      cont1++;
    }
    if(produtos[i][1] > 50 && produtos[i][1] < 100){
      nomes.add(produtos[i][0]);
    }
    if(produtos[i][1] > 100){
      somaCaros += produtos[i][1];
      cont2++;
    }
  }

  print("\n\nRelatório");
  print("Quantidade de Produtos com Preço Inferior a R\$50.00: $cont1");
  print("Nome dos produtos com preço entre R\$50,00 e R\$100,00: $nomes");
  print("Média dos Preços dos produtos com preço superior a R\$100,00: ${somaCaros/cont2}\n");

}