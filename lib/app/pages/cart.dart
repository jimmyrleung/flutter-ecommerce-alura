import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/widgets/cart_list.dart';
import '../widgets/custom_appbar.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}
