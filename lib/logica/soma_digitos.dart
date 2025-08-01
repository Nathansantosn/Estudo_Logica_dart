import 'dart:io';

void main() {
  stdout.write('Escreva um numero:');
  String? valor = stdin.readLineSync();

  if (valor != null) {
    List<String> digitosList = valor.split('');
    int soma = 0;
    for (int i = 0; i < digitosList.length; i++) {
      soma += int.parse(digitosList[i]);
    }
    print('A soma dos dígitos é: $soma');
  }
}
