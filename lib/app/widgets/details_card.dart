import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/details_text.dart';

class DetailsCard extends StatelessWidget {
  final Furniture furniture;

  // Precisamos escapar o $ para indicar que não é uma interpolação
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  DetailsCard({this.furniture});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsText(text: furniture.titulo),
          DetailsText(text: furniture.descricao),
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatacaoReais.format(furniture.preco)),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Text('Comprar', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
