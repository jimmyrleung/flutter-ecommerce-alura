import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';

class ProductsGridItemImage extends StatelessWidget {
  final String imageFileName;

  ProductsGridItemImage({this.imageFileName});
  @override
  Widget build(BuildContext context) {
    return Image(
      // Faz com que a imagem ocupe todo espaço disponível no container
      fit: BoxFit.cover,
      image: AssetImage('lib/utils/assets/imagens/$imageFileName'),
    );
  }
}

class ProductsGridItemTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductsGridItemGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductsGridItem extends StatelessWidget {
  final Furniture furniture;

  ProductsGridItem({this.furniture});

  @override
  Widget build(BuildContext context) {
    return ProductsGridItemImage(imageFileName: furniture.foto);
  }
}
