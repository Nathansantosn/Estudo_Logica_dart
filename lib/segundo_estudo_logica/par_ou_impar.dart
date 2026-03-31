import 'package:flutter/material.dart';

class ParOuImpar extends StatefulWidget {
  const ParOuImpar({super.key});

  @override
  State<ParOuImpar> createState() => _ParOuImparState();
}

class _ParOuImparState extends State<ParOuImpar> {
  final TextEditingController _controller = TextEditingController();

  String resultado = '';

  void verificarParOuImpar() {
    int numero = int.tryParse(_controller.text) ?? 0;

    setState(() {
      if (numero % 2 == 0) {
        resultado = 'O número é PAR ';
      } else {
        resultado = 'O número é ÍMPAR';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Par ou Impar")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um numero: ",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: verificarParOuImpar,
                child: Text("Verificar"),
              ),
              SizedBox(height: 16),
              Text(resultado, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
