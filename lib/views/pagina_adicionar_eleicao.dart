import 'package:flutter/material.dart';

class PaginaAdicionarEleicao extends StatefulWidget {
  const PaginaAdicionarEleicao({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarEleicao> createState() => _PaginaAdicionarEleicaoState();
}

class _PaginaAdicionarEleicaoState extends State<PaginaAdicionarEleicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Adicionar uma eleição"),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.add_task, size: 100.00, color: Colors.indigo),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Vamos começar selecionando a eleição:",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
