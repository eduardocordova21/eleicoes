import 'package:eleicoes/models/candidato.dart';
import 'package:eleicoes/models/enums/cargo.dart';

class CandidatosRepository {
  static List<Candidato> getCandidatos() {
    final candidatos = <Candidato>[];

    candidatos.add(Candidato("Nome", "Partido", "1234", Cargo.prefeito));
    candidatos.add(Candidato("Nome", "Partido", "1234", Cargo.vereador));

    return candidatos;
  }
}
