class Eleicao {
  int? id;
  String? siglaUF;
  String? localidadeSgUe;
  int? ano;
  int? codigo;
  String? nomeEleicao;
  String? tipoEleicao;
  String? turno;
  String? tipoAbrangencia;
  String? dataEleicao;
  int? codSituacaoEleicao;
  int? descricaoSituacaoEleicao;
  String? descricaoEleicao;

  Eleicao(
      {this.id,
      this.siglaUF,
      this.localidadeSgUe,
      this.ano,
      this.codigo,
      this.nomeEleicao,
      this.tipoEleicao,
      this.turno,
      this.tipoAbrangencia,
      this.dataEleicao,
      this.codSituacaoEleicao,
      this.descricaoSituacaoEleicao,
      this.descricaoEleicao});

  Eleicao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    siglaUF = json['siglaUF'];
    localidadeSgUe = json['localidadeSgUe'];
    ano = json['ano'];
    codigo = json['codigo'];
    nomeEleicao = json['nomeEleicao'];
    tipoEleicao = json['tipoEleicao'];
    turno = json['turno'];
    tipoAbrangencia = json['tipoAbrangencia'];
    dataEleicao = json['dataEleicao'];
    codSituacaoEleicao = json['codSituacaoEleicao'];
    descricaoSituacaoEleicao = json['descricaoSituacaoEleicao'];
    descricaoEleicao = json['descricaoEleicao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['siglaUF'] = siglaUF;
    data['localidadeSgUe'] = localidadeSgUe;
    data['ano'] = ano;
    data['codigo'] = codigo;
    data['nomeEleicao'] = nomeEleicao;
    data['tipoEleicao'] = tipoEleicao;
    data['turno'] = turno;
    data['tipoAbrangencia'] = tipoAbrangencia;
    data['dataEleicao'] = dataEleicao;
    data['codSituacaoEleicao'] = codSituacaoEleicao;
    data['descricaoSituacaoEleicao'] = descricaoSituacaoEleicao;
    data['descricaoEleicao'] = descricaoEleicao;
    return data;
  }
}
