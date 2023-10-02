import 'Conta_Bancaria.dart';
import 'dart:math';

class Cliente{
  late int _numeroCliente;
  late String _nome;
  late String _telefone;
  late String _endereco;
  late Conta_Bancaria _conta;

  Random random = Random();
  List<int> numerosDeContasUsados = [];

  Cliente(int numeroCliente,String nome, String telefone, String endereco){
    this._numeroCliente = numeroCliente;
    this._nome = nome;
    this._telefone = telefone;
    this._endereco = endereco;
    cadastraConta();
  }
  
  
  void cadastraConta(){
       int numeroConta;
    do {
      numeroConta = random.nextInt(10000); // Altere o intervalo conforme necessário
    } while (numerosDeContasUsados.contains(numeroConta));

    numerosDeContasUsados.add(numeroConta);
    _conta = Conta_Bancaria(numeroConta, this._numeroCliente, 0);
  }

   get getConta => this._conta;

  get getNumeroCliente => this._numeroCliente;
  set setNumeroCliente( value) => this._numeroCliente = value;

  get getNome => this._nome;
  set setNome( value) => this._nome = value;

  get getTelefone => this._telefone;
  set setTelefone( value) => this._telefone = value;

  get getEndereco => this._endereco;
  set setEndereco( value) => this._endereco = value;

}