import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Eleicao.dart';

const String urlEleicoesOrdinarias =
    "https://divulgacandcontas.tse.jus.br/divulga/rest/v1/eleicao/ordinarias";

class EleicoesRepository {
  Future<List<Eleicao>> obterEleicoes() async {
    final resposta = await http.get(Uri.parse(urlEleicoesOrdinarias));

    if (resposta.statusCode == 200) {
      List<dynamic> listaDeObjetos = jsonDecode(resposta.body);
      List<Eleicao> listaDeEleicoes = [];

      for (var eleicao in listaDeObjetos) {
        listaDeEleicoes.add(Eleicao.fromJson(eleicao));
      }

      return listaDeEleicoes;
    } else {
      throw Exception("RUN BITCH, RUUUUUUN!");
    }
  }
}
