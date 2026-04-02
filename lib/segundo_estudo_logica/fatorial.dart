import 'package:flutter/material.dart';

class ViewFatorial extends StatefulWidget {
  const ViewFatorial({super.key});

  @override
  State<ViewFatorial> createState() => _ViewFatorialState();
}

class _ViewFatorialState extends State<ViewFatorial> {
  final TextEditingController _controllerFatorial = TextEditingController();

  int resultado = 0;

  int fatorialNumero(int numero) {
    int fatorial = 1;
    for (int cont = 1; cont <= numero; cont++) {
      fatorial *= cont;
    }
    print(fatorial);

    return fatorial;
  }

  void VerificaFatorial() {
    int numero = int.tryParse(_controllerFatorial.text) ?? 0;

    setState(() {
      resultado = fatorialNumero(numero);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numero fatorial")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _controllerFatorial,
                decoration: InputDecoration(
                  labelText: "Digite um numero: ",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: VerificaFatorial,
                child: Text("Verificar"),
              ),
              SizedBox(height: 16),
              Text('Resultado: $resultado'),
            ],
          ),
        ),
      ),
    );
  }
}
