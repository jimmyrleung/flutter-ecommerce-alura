import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/models/furniture.dart';
import 'package:flutter_ecommerce_alura/app/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce_alura/app/widgets/details_card.dart';

class Details extends StatefulWidget {
  final Furniture furniture;
  Details({this.furniture});

  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void initState() {
    // Initialize state
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/utils/assets/imagens/${widget.furniture.foto}'),
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
            height: 220,
            child: DetailsCard(
              furniture: widget.furniture,
              triggerUpdate: update,
            ),
          ),
        ),
      ),
    );
  }

  update() {
    setState(() {});
  }
}
