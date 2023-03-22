import 'package:eleicoes/widgets/validacao_do_candidato.dart';
import 'package:flutter/material.dart';

import '../../models/enums/rotas.dart';

class PaginaAdicionarDeputadoFederal extends StatefulWidget {
  const PaginaAdicionarDeputadoFederal({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarDeputadoFederal> createState() =>
      _PaginaAdicionarDeputadoFederalState();
}

class _PaginaAdicionarDeputadoFederalState
    extends State<PaginaAdicionarDeputadoFederal> {
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
              child: Text(
                "Deputado Federal",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 4,
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



          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const ValidacaoDoCandidato();
            },
          )
          //Navigator.pushNamed(context, Rota.adicionarSenador.name)
        },
        tooltip: "Avançar",
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
