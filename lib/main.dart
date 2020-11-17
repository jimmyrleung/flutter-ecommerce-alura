import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_alura/app/widgets/products_grid.dart';
import 'package:flutter_ecommerce_alura/color_palette.dart';
import 'app/pages/cart.dart';
import 'app/widgets/custom_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/cart': (context) => Cart(),
      },
      title: 'Flutter Demo',
      // * DISABLE debug banner debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Set our primary ColorPalette as theme
        primarySwatch: ColorPalette().lilac,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Também podemos estabelecer um tema para textos
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20, 
            fontFamily: 'Alata', 
            fontWeight: FontWeight.bold, 
            color: Colors.black,
        ),
        headline2: TextStyle(
            fontSize: 20, 
            fontFamily: 'Alata', 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
        ),
      ),
    ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List furnitures = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold is a base structure for Material Design widgets
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'E-Commerce',
        isAtCart: false,
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              // Assim como o Flexbile, o expanded é um controle que faz
              // o seu child ocupar o máximo de espaço possível
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Produtos'),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
            ],
          ),
          // O Flexible é um controle que faz com que seu child ocupe
          // o máximo de espaço possível
          Flexible(
            child: ProductsGrid(furnitures: furnitures),
          ),
        ],
      ),
    );
  }
}
