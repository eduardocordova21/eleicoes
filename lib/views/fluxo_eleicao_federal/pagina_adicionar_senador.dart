import 'package:flutter/material.dart';

import '../../models/enums/rotas.dart';

class PaginaAdicionarSenador extends StatefulWidget {
  const PaginaAdicionarSenador({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarSenador> createState() => _PaginaAdicionarSenadorState();
}

class _PaginaAdicionarSenadorState extends State<PaginaAdicionarSenador> {
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
            Icon(Icons.supervised_user_circle_outlined,
                size: 200.00, color: Colors.indigo),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Senador",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 3,
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
        onPressed: () => {
          Navigator.pushNamed(context, Rota.adicionarPresidente.name),
        },
        tooltip: "Avançar",
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
