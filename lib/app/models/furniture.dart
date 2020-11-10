class Furniture {
  String titulo;
  String foto;
  String descricao;
  int preco;

  Furniture({
    this.titulo,
    this.foto,
    this.descricao,
    this.preco,
  });

  Furniture.fromJson(Map<String, dynamic> json)
      : titulo = json['titulo'],
        foto = json['foto'],
        descricao = json['descricao'],
        preco = json['preco'];
}
