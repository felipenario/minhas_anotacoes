import 'package:minhas_anotacoes/helper/AnotacaoHelper.dart';

class Anotacao{

  int id;
  String titulo;
  String descricao;
  String data;

  Anotacao(this.titulo, this.descricao, this.data);

  Map toMap(){
    Map<String, dynamic> map = {
      "titulo" : this.titulo,
      "descricao" : this.descricao,
      "data" : this.data
    };

    if(this.id != null){
      map["id"] = this.id;
    }

    return map;
  }


  Anotacao.fromMap(Map map){

    this.id = map[AnotacaoHelper.colunaId];
    this.titulo = map[AnotacaoHelper.colunaTitulo];
    this.descricao = map[AnotacaoHelper.colunaDescricao];
    this.data = map[AnotacaoHelper.colunaData];

  }

}