import 'package:flutter/material.dart';

class FormAdicionarEleicao extends StatefulWidget {
  const FormAdicionarEleicao({super.key});

  @override
  State<FormAdicionarEleicao> createState() => _FormAdicionarEleicaoState();
}

class _FormAdicionarEleicaoState extends State<FormAdicionarEleicao> {
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
