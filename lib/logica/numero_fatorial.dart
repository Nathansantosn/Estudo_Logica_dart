import 'dart:io';

void main() {
  int numeroFatorial = 1;
  stdout.write('Digite o numero:');
  String? numero = stdin.readLineSync();
  if (numero != null) {
    int numeroInteiro = int.parse(numero);
    while (numeroInteiro > 1) {
      numeroFatorial *= numeroInteiro;
      numeroInteiro--;
      print('Numero fatorial é: $numeroFatorial');
    }
  }
}
