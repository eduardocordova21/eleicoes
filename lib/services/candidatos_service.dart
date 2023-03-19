import 'package:eleicoes/entities/candidato.dart';
import 'package:eleicoes/entities/enums/cargo.dart';

class CandidatosService {
  static List<Candidato> getCandidatos() {
    final candidatos = <Candidato>[];

    candidatos.add(Candidato("Nome", "Partido", "1234", Cargo.prefeito));
    candidatos.add(Candidato("Nome", "Partido", "1234", Cargo.vereador));

    return candidatos;
  }
}
