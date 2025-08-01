import 'dart:io';

void main() {
  String invertida;

  stdout.write('Escreva um nome: ');
  String? nome = stdin.readLineSync();
  if (nome != null) {
    invertida = nome.split('').reversed.join('');
    print('Nome invertido: $invertida');
  }
}
