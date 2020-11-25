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
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(furniture.titulo),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${furniture.preco}'),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _increaseAmount(item),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                Text('${item.amount}'),
                                GestureDetector(
                                  onTap: () => _decreaseAmount(item),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _increaseAmount(CartItem item) {
    item.amount++;
  }

  _decreaseAmount(CartItem item) {
    item.amount--;
  }
}
