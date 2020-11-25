import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/cart_item.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/main.dart';

class CartList extends StatelessWidget {
  final List<CartItem> items = Home.cartItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        CartItem item = items[index];
        Furniture furniture = item.furniture;
        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            // Card receives only one child, so we need an element that accept more than one item
            // like a row or a column
            child: Row(
              children: [
                Image(
                  height: 90,
                  image:
                      AssetImage('lib/utils/assets/imagens/${furniture.foto}'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(furniture.titulo),
                      Text('${furniture.preco}'),
                      Text('${item.amount}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
