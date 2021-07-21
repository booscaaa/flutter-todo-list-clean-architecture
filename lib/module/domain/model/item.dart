import 'package:todolist/module/domain/model/link.dart';

class Item {
  Item({
    this.id,
    this.nome,
    this.descricao,
    this.data,
    this.sigla,
    this.links,
  });

  int? id;
  String? nome;
  String? descricao;
  String? data;
  String? sigla;
  List<Link>? links;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"] == null ? null : json["id"],
        nome: json["nome"] == null ? null : json["nome"],
        descricao: json["descricao"] == null ? null : json["descricao"],
        data: json["data"] == null ? null : json["data"],
        sigla: json["sigla"] == null ? null : json["sigla"],
        links: json["links"] == null
            ? null
            : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nome": nome == null ? null : nome,
        "descricao": descricao == null ? null : descricao,
        "data": data == null ? null : data,
        "sigla": sigla == null ? null : sigla,
        "links": links == null
            ? null
            : List<dynamic>.from(links!.map((x) => x.toJson())),
      };
}
