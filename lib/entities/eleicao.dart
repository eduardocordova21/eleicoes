import 'package:eleicoes/entities/candidato.dart';
import 'package:eleicoes/entities/enums/tipo_de_eleicao.dart';

class Eleicao{
  TipoDeEleicao tipoDeEleicao;
  DateTime anoDaEleicao;
  List<Candidato> candidatos;

  Eleicao(this.tipoDeEleicao, this.anoDaEleicao, this.candidatos);
}