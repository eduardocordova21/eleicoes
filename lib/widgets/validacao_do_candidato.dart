import 'package:flutter/material.dart';

class ValidacaoDoCandidato extends StatelessWidget {
  const ValidacaoDoCandidato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Foto"),
            const Text("Nome"),
            const Text("Partido"),
            const Text("Numero"),
            const Text("Vice"),
            ElevatedButton(onPressed: () => {}, child: const Text("Continuar"))
          ],
        ),
      ),
    );
  }
}
