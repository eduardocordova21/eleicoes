import 'package:flutter/material.dart';

class FormAdicionarEleicaoWidget extends StatefulWidget {
  const FormAdicionarEleicaoWidget({super.key});

  @override
  State<FormAdicionarEleicaoWidget> createState() =>
      _FormAdicionarEleicaoWidgetState();
}

class _FormAdicionarEleicaoWidgetState
    extends State<FormAdicionarEleicaoWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: DropdownButtonFormField(
              items: const <DropdownMenuItem>[
                DropdownMenuItem(
                  value: 2022,
                  child: Text("2022"),
                ),
                DropdownMenuItem(
                  value: 2021,
                  child: Text("2021"),
                ),
              ],
              onChanged: (e) => {},
              borderRadius: BorderRadius.circular(10),
              icon: const Icon(Icons.calendar_month),
              hint: const Text("Ano Eleitoral"),
            ),
          )
        ],
      ),
    );
  }
}
