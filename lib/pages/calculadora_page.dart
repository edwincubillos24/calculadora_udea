import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  int _total = 0;
  final _numero1 = TextEditingController();
  final _numero2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Calculadora"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: _numero1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite el primer número",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _numero2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite el segundo número",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "El total es $_total",
                style: const TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
