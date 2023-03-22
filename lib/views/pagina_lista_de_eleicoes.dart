import 'package:eleicoes/models/Eleicao.dart';
import 'package:eleicoes/models/enums/rotas.dart';
import 'package:eleicoes/repository/eleicoes_repository.dart';
import 'package:flutter/material.dart';

class PaginaListaDeEleicoes extends StatefulWidget {
  const PaginaListaDeEleicoes({super.key});

  @override
  State<PaginaListaDeEleicoes> createState() => _PaginaListaDeEleicoesState();
}

class _PaginaListaDeEleicoesState extends State<PaginaListaDeEleicoes> {
  List<Eleicao> eleicoes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Suas Eleições"),
      ),
      body: eleicoes.isEmpty
          ? const Center(
              child:
                  Icon(Icons.person_search, size: 200.0, color: Colors.indigo))
          : ListView.builder(
              itemCount: eleicoes.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: const Color.fromRGBO(246, 242, 249, 1.0),
                    elevation: 5,
                    margin: const EdgeInsets.all(15),
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "TESTE",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Text("2022"),
                              ],
                            ),
                            const Icon(Icons.edit,
                                color: Colors.indigo, size: 30)
                          ],
                        )),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            {Navigator.pushNamed(context, Rota.adicionarEleicao.name)},
        tooltip: 'Adicionar Eleição',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
