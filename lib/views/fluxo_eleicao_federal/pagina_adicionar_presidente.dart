import 'package:flutter/material.dart';

class PaginaAdicionarPresidente extends StatefulWidget {
  const PaginaAdicionarPresidente({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarPresidente> createState() => _PaginaAdicionarPresidenteState();
}

class _PaginaAdicionarPresidenteState extends State<PaginaAdicionarPresidente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar candidato"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.person_pin,
                size: 200.00, color: Colors.indigo),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Presidente",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                style:
                TextStyle(fontWeight: FontWeight.bold, letterSpacing: 20.0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: "Avançar",
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
