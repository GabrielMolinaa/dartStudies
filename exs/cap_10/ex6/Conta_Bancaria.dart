
class Conta_Bancaria{

late int _numeroConta; 
late int _numeroCliente;
late double _saldo;


Conta_Bancaria(int numeroConta, int numeroCliente,double saldo){
  this._numeroConta = numeroConta;
  this._numeroCliente = numeroCliente;
  this._saldo = saldo;

}

get getNumeroConta => this._numeroConta;
 get numeroCliente => this._numeroCliente;
 set numeroCliente(value) => this._numeroCliente = value;
 get saldo => this._saldo;
 set saldo(value) => this._saldo = value;

 void imprimeConta(){
  print("Número Conta: ${this._numeroConta}");
  print("Número Cliente: ${this._numeroCliente}");
  print("Saldo: ${this._saldo}\n\n");
 }



}