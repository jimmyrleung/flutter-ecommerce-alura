import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce_alura/app/widgets/details_card.dart';

class Details extends StatelessWidget {
  final Furniture furniture;

  Details({this.furniture});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/utils/assets/imagens/${furniture.foto}'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: 'Detalhes',
          isAtCart: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 200,
            child: DetailsCard(
              furniture: furniture,
            ),
          ),
        ),
      ),
    );
  }
}
