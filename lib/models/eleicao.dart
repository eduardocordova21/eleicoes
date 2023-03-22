import 'package:eleicoes/models/candidato.dart';
import 'package:eleicoes/models/enums/tipo_de_eleicao.dart';

class Eleicao{
  TipoDeEleicao tipoDeEleicao;
  DateTime anoDaEleicao;
  List<Candidato> candidatos;

  Eleicao(this.tipoDeEleicao, this.anoDaEleicao, this.candidatos);
}