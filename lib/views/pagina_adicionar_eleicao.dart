import 'package:eleicoes/widgets/form_adicionar_eleicao.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_custom.dart';

class PaginaAdicionarEleicao extends StatelessWidget {
  const PaginaAdicionarEleicao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(title: "Adicionar uma Eleição"),
      body: FormAdicionarEleicao(),
    );
  }
}
