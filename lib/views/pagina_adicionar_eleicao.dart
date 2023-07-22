import 'package:flutter/material.dart';

import '../widgets/app_bar_custom_widget.dart';
import '../widgets/form_adicionar_eleicao_widget.dart';

class PaginaAdicionarEleicao extends StatelessWidget {
  const PaginaAdicionarEleicao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustomWidget(title: "Adicionar uma Eleição"),
      body: FormAdicionarEleicaoWidget(),
    );
  }
}
