import 'package:eleicoes/views/fluxo_eleicao_federal/pagina_adicionar_deputado_federal.dart';
import 'package:eleicoes/views/pagina_adicionar_eleicao.dart';
import 'package:eleicoes/views/pagina_lista_de_eleicoes.dart';
import 'package:eleicoes/entities/enums/rotas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eleições',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: Rota.home.name,
      routes: {
        Rota.home.name: (context) => const PaginaListaDeEleicoes(),
        Rota.adicionarEleicao.name: (context) => const PaginaAdicionarEleicao(),
        Rota.adicionarDeputadoFederal.name: (context) => const PaginaAdicionarDeputadoFederal(),
      },
    );
  }
}
