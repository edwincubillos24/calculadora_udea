import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

enum Operacion { sumar, restar, multiplicar, dividir }

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
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 64.0),
              TextFormField(
                controller: _numero1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite el primer número",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _numero2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite el segundo número",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      _calcular(Operacion.sumar);
                    },
                    label: const Text("+"),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      _calcular(Operacion.restar);
                    },
                    label: const Text("-"),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      _calcular(Operacion.multiplicar);
                    },
                    label: const Text("*"),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      _calcular(Operacion.dividir);
                    },
                    label: const Text("/"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "El total es $_total",
                style: const TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _calcular(Enum operacion) {
    setState(() {
      switch (operacion) {
        case Operacion.sumar:
          _total = int.parse(_numero1.text) + int.parse(_numero2.text);
          break;
        case Operacion.restar:
          _total = int.parse(_numero1.text) - int.parse(_numero2.text);
          break;
        case Operacion.multiplicar:
          _total = int.parse(_numero1.text) * int.parse(_numero2.text);
          break;
        default:
          _total = int.parse(_numero1.text) ~/ int.parse(_numero2.text);
          break;
      }

      /*if (operacion == Operacion.sumar) {
        _total = int.parse(_numero1.text) + int.parse(_numero2.text);
      } else if (operacion == Operacion.restar) {
        _total = int.parse(_numero1.text) - int.parse(_numero2.text);
      } else if (operacion == Operacion.multiplicar) {
        _total = int.parse(_numero1.text) * int.parse(_numero2.text);
      } else {
        _total = int.parse(_numero1.text) ~/ int.parse(_numero2.text);
      }*/
    });
  }
}
