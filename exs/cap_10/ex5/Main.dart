
import 'dart:io';
import 'Produto.dart';

List<Produto> preencheProdutos(){
  List<Produto> produtos = [];

  for(int i = 0;i<2;i++){
    print("Código do Produto [${i+1}]:  ");
    int codigo = int.parse(stdin.readLineSync()!);

    print("Descrição do Produto [${i+1}]: ");
    String descricao = stdin.readLineSync()!;

    print("Valor Unitário do Produto [${i+1}]: ");
    double valorUnitario = double.parse(stdin.readLineSync()!);

    print("Quantidade em Estoque do Produto [${i+1}]: ");
    int quantidadeEstoque = int.parse(stdin.readLineSync()!);

    produtos.add(Produto(codigo, descricao, valorUnitario, quantidadeEstoque));
  }
  return produtos;

}

bool editarProduto(List<Produto> produtos){

  int codigo;
  print("\n\nEditando Produto...");
  print("Digite o Código do produto para editar: ");
  codigo = int.parse(stdin.readLineSync()!);

  for(var produto in produtos){
    if(produto.getCodigo == codigo){
      print("Digite a nova Descrição: ");
      produto.setDescricao = stdin.readLineSync()!;

      print("Digite o novo Valor: ");
      produto.setValorUnitario = double.parse(stdin.readLineSync()!);

      print("Digite a nova quantidade em estoque: ");
      produto.setQuantidadeEstoque = int.parse(stdin.readLineSync()!);

      return true;
    }
  }
  return false;
}

void mostraDescricao(List<Produto> produtos){
  String letra;
  print("\n\nMostrar descrição com base na primeira letra...");
  print("Digite a Letra para verificar nas descrições: ");
  letra = stdin.readLineSync()!;

  for(var produto in produtos){
    if(produto.getDescricao.startsWith(letra)){
      print("Produto\tDescricao");
      print("${produto.getCodigo}\t${produto.getDescricao}");
    }
  }
}
void mostraPoucoEstoque(List<Produto> produtos){

  print("\n\nMostrar produtos com menos de 5 no estoque...");
  for(var produto in produtos){
    if(produto.getQuantidadeEstoque < 5){
      print("Produto\tQuantidade em Estoque");
      print("${produto.getCodigo}\t${produto.getQuantidadeEstoque}");
    }
  }
}
void main(){
  List<Produto> produtos = preencheProdutos();

  produtos.sort((a, b) => a.getCodigo > b.getCodigo ? 1:-1);

  if(editarProduto(produtos)){
    print("Produto Editado com Sucesso!");
  }else{
    print("Codigo não encontrado!");
  }

  mostraDescricao(produtos);
  mostraPoucoEstoque(produtos);


  }