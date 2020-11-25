import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/cart_item.dart';
import 'package:flutter_ecommerce_alura/main.dart';
import 'package:intl/intl.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/details_text.dart';

class DetailsCard extends StatelessWidget {
  final Furniture furniture;
  final Function triggerUpdate;

  // Precisamos escapar o $ para indicar que não é uma interpolação
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  DetailsCard({this.furniture, this.triggerUpdate});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsText(
            text: furniture.titulo,
            textStyle: Theme.of(context).textTheme.headline1,
          ),
          DetailsText(text: furniture.descricao),
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(furniture.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _addItemToCart(CartItem(amount: 1, furniture: furniture));
                    triggerUpdate();
                  },
                  child: Text('Comprar', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _addItemToCart(CartItem item) {
    Home.cartItems.add(item);
  }
}
