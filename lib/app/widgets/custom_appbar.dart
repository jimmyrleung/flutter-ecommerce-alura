import 'package:flutter/material.dart';
import './cart_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      backgroundColor: Colors.transparent,
      elevation: 0.0,

      // No iOS o título já vem centralizado, entretanto, no Android
      // o título é posicionado à esquerda
      centerTitle: true,

      // Actions permite que a gente coloque itens com açoes na appbar,
      // como por exemplo: botoes
      actions: <Widget>[
        CartButton()
      ],
    );
  }

  @override
  // kToolbarHeight é uma variavel padrão do flutter para toolbars
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
