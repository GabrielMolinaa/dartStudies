void main(){

  List<String> nomesProdutos = ['Bolacha','Bola','Cadeira','Milho','Vassoura','Arroz','Feijão','Miojo','Macarrão','Chinelo'];
  List<int> codigosProdutos = [1,2,3,4,5,6,7,8,9,10];
  List<double> precosProdutos = [3.99,10000,59.99,2.99,1500,5.99,8.99,1.99,3.00,15.99];
  List<double> novosPrecos = [];

  for(int i = 0; i<10;i++){
    if(codigosProdutos[i] % 2 == 0 && precosProdutos[i] > 1000){
      //20%
      novosPrecos.add((precosProdutos[i] + (precosProdutos[i] * 0.2)));
    }else if(codigosProdutos[i] % 2 == 0){
      //15%
      novosPrecos.add((precosProdutos[i] + (precosProdutos[i] * 0.15)));
    }else if(precosProdutos[i] > 1000){
      //10%
      novosPrecos.add((precosProdutos[i] + (precosProdutos[i] * 0.1)));
    }else{
      novosPrecos.add(precosProdutos[i]);
    }
  }

  for(int i = 0; i<10;i++){
    if(novosPrecos[i] != precosProdutos[i]){
      print("Nome: ${nomesProdutos[i]}\nCódigo: ${codigosProdutos[i]}\nPreço Antigo: ${precosProdutos[i]}\nNovo Preço: ${novosPrecos[i]}\n\n");
    }
  }
}