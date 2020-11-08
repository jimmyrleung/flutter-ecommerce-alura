import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        isAtCart: true,
        ),
    );
  }
}
