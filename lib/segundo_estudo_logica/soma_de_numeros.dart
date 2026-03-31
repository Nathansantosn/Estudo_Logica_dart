import 'dart:io';

import 'package:flutter/material.dart';

class SomaDeNumeros extends StatefulWidget {
  const SomaDeNumeros({super.key});

  @override
  State<SomaDeNumeros> createState() => _SomaDeNumerosState();
}

class _SomaDeNumerosState extends State<SomaDeNumeros> {
  final TextEditingController _numero_controller = TextEditingController();

  int resultado = 0;

  int somanumero(int numero) {
    int soma = 0;
    for (int i = 1; i <= numero; i++) {
      soma += i;
    }
    return soma;
  }

  void calcular() {
    int numero = int.tryParse(_numero_controller.text) ?? 0;

    setState(() {
      resultado = somanumero(numero);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Soma de dos numeros")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _numero_controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um numero: ",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: calcular, child: Text('Calcular')),
              SizedBox(height: 16),
              Text('Resultado: $resultado'),
            ],
          ),
        ),
      ),
    );
  }
}
