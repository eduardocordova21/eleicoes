import 'package:eleicoes/models/enums/rotas.dart';
import 'package:eleicoes/views/pagina_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: Rota.paginaPrincipal.name,
      routes: {
        Rota.paginaPrincipal.name: (context) => const PaginaPrincipal(),
      },
    );
  }
}
