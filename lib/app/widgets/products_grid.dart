import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/products_grid_item.dart';

class ProductsGrid extends StatelessWidget {
  final furnitures;

  ProductsGrid({this.furnitures});

  @override
  Widget build(BuildContext context) {
    // .builder: Utilizamos builders para fazer construcoes de forma dinamica
    // Se tivessemos os dados de imediato, poderiamos apenas criar um GridView sem o Builder
    // e popular os dados na propriedade children ou então criar um GridView.count

    return GridView.builder(
      // Grid with fixed X axis count
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 itens por linha
      ),
      // The itemBuilder iterates over the list
      itemBuilder: (BuildContext context, int index) {
        // Access a furniture
        final furniture = Furniture.fromJson(this.furnitures[index]);

        return ProductsGridItem(furniture: furniture);
      },
      itemCount: this.furnitures.length,
    );
  }
}
