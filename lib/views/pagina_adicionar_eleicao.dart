import 'package:eleicoes/models/enums/rotas.dart';
import 'package:eleicoes/models/enums/tipo_de_eleicao.dart';
import 'package:eleicoes/repository/eleicoes_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Eleicao.dart';

class PaginaAdicionarEleicao extends StatefulWidget {
  const PaginaAdicionarEleicao({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarEleicao> createState() => _PaginaAdicionarEleicaoState();
}

class _PaginaAdicionarEleicaoState extends State<PaginaAdicionarEleicao> {
  late Future<List<Eleicao>> eleicoes;
  TipoDeEleicao? _tipoDeEleicao = TipoDeEleicao.federal;

  @override
  void initState() {
    super.initState();
    eleicoes = EleicoesRepository().obterEleicoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Adicionar uma eleição"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.add_task, size: 100.00, color: Colors.indigo),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Vamos começar selecionando a eleição:",
                style: TextStyle(fontSize: 18),
              ),
            ),
            FutureBuilder<List<Eleicao>>(
                future: eleicoes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Text(
                            snapshot.data![index].descricaoEleicao!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  return const CircularProgressIndicator();
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            switch (_tipoDeEleicao) {
              case TipoDeEleicao.federal:
                Navigator.pushNamed(
                    context, Rota.adicionarDeputadoFederal.name);
                break;
            }
          }),
        },
        tooltip: "Avançar",
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
