/*  
Faça um programa que verifique a validade de uma senha fornecida pelo usuário.
A senha é 4531. O Programa deve mostrar uma mensagem de permissão de acesso ou
não.

*/
import 'dart:io';

bool verificaSenha(String senha) {
  if (senha == '4531') {
    return true;
  } else {
    return false;
  }
}

void main() {
  String senha = '';
  print("Digite a Senha: ");

  String? input = stdin.readLineSync();
  if (input != null) {
    senha = input;
  } else {
    print("Erro na Leitura\n");
  }

  if (verificaSenha(senha)) {
    print("Acesso Autorizado!");
  } else {
    print("Acesso Negado");
  }
}
