import 'package:eleicoes/models/enums/cargo.dart';

class Candidato {
  String nome;
  String partido;
  String numero;
  Cargo cargo;

  Candidato(this.nome, this.partido, this.numero, this.cargo);
}
