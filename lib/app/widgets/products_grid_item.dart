import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/pages/details.dart';

class ProductsGridItemImage extends StatelessWidget {
  final String imageFileName;

  ProductsGridItemImage({this.imageFileName});
  @override
  Widget build(BuildContext context) {
    // Quando utilizamos o item dentro de uma Stack não basta usar o BoxFit.cover
    // Também precisamos utilizar o Positioned.fill para que todo espaço disponível seja ocupado
    return Positioned.fill(
      child: Image(
        // Faz com que a imagem ocupe todo espaço disponível no container
        fit: BoxFit.cover,
        image: AssetImage('lib/utils/assets/imagens/$imageFileName'),
      ),
    );
  }
}

class ProductsGridItemTitle extends StatelessWidget {
  final String titulo;

  ProductsGridItemTitle({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo),
    );
  }
}

class ProductsGridItemGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Theme.of(context).primaryColor,
          ],
        ),
      ),
    );
  }
}

class ProductsGridItem extends StatelessWidget {
  final Furniture furniture;

  ProductsGridItem({this.furniture});

  @override
  Widget build(BuildContext context) {
    // o InkWell é parecido com o GestureDetector, porém, ele possui um
    // efeito visual diferente
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(furniture: furniture)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            ),
          ],
        ),

        // ClipRRect nos ajuda a cortar elementos filhos de acordo com certas regras,
        // como por exemplo: borderRadius
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          // Para fazer uma sobreposição podemos utilizar o stack
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ProductsGridItemImage(imageFileName: furniture.foto),
              ProductsGridItemGradient(),
              ProductsGridItemTitle(titulo: furniture.titulo),
            ],
          ),
        ),
      ),
    );
  }
}
