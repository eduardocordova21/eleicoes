import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Eleicao.dart';

const String urlEleicoesOrdinarias =
    "https://divulgacandcontas.tse.jus.br/divulga/rest/v1/eleicao/ordinarias";

class EleicoesRepository {
  Future<List<Eleicao>> obterEleicoes() async {
    final resposta = await http.get(Uri.parse(urlEleicoesOrdinarias));

    if (resposta.statusCode == 200) {
      var dadosEmJson = jsonDecode(resposta.body);
      List<Eleicao> listaDeEleicoes = List.from(dadosEmJson);
      return listaDeEleicoes;
    } else {
      throw Exception("RUN BITCH, RUUUUUUN!");
    }
  }
}
