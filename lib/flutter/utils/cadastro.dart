import 'package:estudo_dart_flutter/flutter/models/usuario.dart';

Usuario usuario = Usuario(
  nome: 'Nathan',
  email: 'nathan@gmail.com',
  senha: '123456',
);

cadastrar(String nome, String email, String senha) {
  if (nome.length < 3 || senha.length < 6) {
    print('Cadastro inválido');
  } else {
    print('Cadastro realizado com sucesso');
    print('Nome: $nome');
    print('Email: $email');
    print('Senha: $senha');
  }
}
