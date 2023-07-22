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
          DropdownButtonFormField(
            items: const <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text("2022"),
              )
            ],
            onChanged: (e) => {},
          ),
        ],
      ),
    );
  }
}
