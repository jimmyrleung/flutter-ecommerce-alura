import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/widgets/cart_list.dart';
import 'package:intl/intl.dart';
import '../../main.dart';
import '../widgets/custom_appbar.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final currencyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int total = addCartItemsUp();

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: Theme.of(context).textTheme.headline4),
            Text('${currencyFormat.format(total)}', style: Theme.of(context).textTheme.headline5),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        isAtCart: true,
      ),
      body: CartList(
        updateCart: updateCart,
      ),
    );
  }

  updateCart() {
    setState(() {});
  }

  int addCartItemsUp() {
    return Home.cartItems.isNotEmpty
        ? Home.cartItems
            .map((cartItem) => cartItem.furniture.preco * cartItem.amount)
            .reduce((currentPrice, newPrice) => currentPrice + newPrice)
        : 0;
  }
}
