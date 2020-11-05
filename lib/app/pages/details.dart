import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: FlatButton(
        onPressed: () {
          // Navigation through route name
          Navigator.pushNamed(
            context,
            '/cart',
          );
        },
        child: Text('Carrinho'),
      ),
    );
  }
}
