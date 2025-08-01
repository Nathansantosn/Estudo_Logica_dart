import 'dart:io';

void main() {
  stdout.write('Escreva um nome:');
  String? nome = stdin.readLineSync();

  if (nome != null) {
    List<String> ListDeLetras = nome.split('');
    List<String> ListDeLetrasReverse = nome.split('').reversed.toList();
    for (int i = 0; i < ListDeLetras.length; i++) {
      if (ListDeLetras.contains(ListDeLetrasReverse[i])) {
        print(
          'Esse nome é um palindromo: $ListDeLetras invertido é igual $ListDeLetrasReverse',
        );
      } else {
        print('Esse nome não é palindromo.');
      }
    }
  }
}
