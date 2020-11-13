import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/details_text.dart';

class DetailsCard extends StatelessWidget {
  final Furniture furniture;

  DetailsCard({this.furniture});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          DetailsText(text: furniture.titulo),
          DetailsText(text: furniture.descricao),
        ],
      ),
    );
  }
}
