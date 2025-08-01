import 'dart:io';

void main() {
  int inteironumero = 0;
  int numeroPar = 0;
  int numeroInpar = 0;
  stdout.write('Escreva o numero:  ');
  String? numero = stdin.readLineSync();
  if (numero != null) {
    inteironumero = int.parse(numero);

    for (int i = 0; i <= inteironumero; i++) {
      if (i % 2 == 0) {
        numeroPar++;
      } else {
        numeroInpar++;
      }
    }
  }

  print('Quantidade de numeros pares: $numeroPar\n');
  print('Quantidade de numeros impares: $numeroInpar\n');
}
