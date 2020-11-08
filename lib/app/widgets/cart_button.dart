import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // o GestureDetector é um Widget que nos ajuda a incluir
    // interações. Nesse caso vamos pegar a ação de tap
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cart');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Image(
          height: 40,
          image: AssetImage('lib/utils/assets/icones/carrinho.png'),
        ),
      ),
    );
  }
}
