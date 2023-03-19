import 'package:flutter/material.dart';

class PaginaAdicionarCandidato extends StatefulWidget {
  const PaginaAdicionarCandidato({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarCandidato> createState() =>
      _PaginaAdicionarCandidatoState();
}

class _PaginaAdicionarCandidatoState extends State<PaginaAdicionarCandidato> {
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
            Icon(Icons.supervised_user_circle,
                size: 200.00, color: Colors.indigo),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("Deputado Federal"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 20.0
                ),
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
