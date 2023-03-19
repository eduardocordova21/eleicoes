import 'package:eleicoes/entities/enums/rotas.dart';
import 'package:eleicoes/entities/enums/tipo_de_eleicao.dart';
import 'package:flutter/material.dart';

class PaginaAdicionarEleicao extends StatefulWidget {
  const PaginaAdicionarEleicao({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarEleicao> createState() => _PaginaAdicionarEleicaoState();
}

class _PaginaAdicionarEleicaoState extends State<PaginaAdicionarEleicao> {
  TipoDeEleicao? _tipoDeEleicao = TipoDeEleicao.federal;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_task, size: 200.00, color: Colors.indigo),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Vamos começar pela categoria da eleição:"),
            ),
            ListTile(
              title: Text(TipoDeEleicao.federal.name.toUpperCase()),
              leading: Radio<TipoDeEleicao>(
                value: TipoDeEleicao.federal,
                groupValue: _tipoDeEleicao,
                onChanged: (TipoDeEleicao? value) {
                  setState(() {
                    _tipoDeEleicao = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(TipoDeEleicao.estadual.name.toUpperCase()),
              leading: Radio<TipoDeEleicao>(
                value: TipoDeEleicao.estadual,
                groupValue: _tipoDeEleicao,
                onChanged: (TipoDeEleicao? value) {
                  setState(() {
                    _tipoDeEleicao = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(TipoDeEleicao.municipal.name.toUpperCase()),
              leading: Radio<TipoDeEleicao>(
                value: TipoDeEleicao.municipal,
                groupValue: _tipoDeEleicao,
                onChanged: (TipoDeEleicao? value) {
                  setState(() {
                    _tipoDeEleicao = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            {Navigator.pushNamed(context, Rota.adicionarCandidato.name)},
        tooltip: "Avançar",
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
