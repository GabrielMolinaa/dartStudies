import 'Pessoa.dart';

void main() {
  List<Pessoa> pessoas = [];
  pessoas.add(Pessoa('João', 23));
  pessoas.add(Pessoa('Enzo', 5));
  pessoas.add(Pessoa('Maria', 10));

  pessoas.forEach((element) {
    int idadeMeses = element.idadeMeses();
    int idadeFutura = element.idadeFutura();
    print("${element.getNome}");
    print("Idade em Meses: $idadeMeses meses");
    print("Idade em 2050: $idadeFutura anos\n");
  });
}
