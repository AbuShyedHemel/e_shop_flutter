import 'package:e_shop/components/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget image_carousel = Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/poster1.png'),
          AssetImage('images/poster2.png'),
          AssetImage('images/poster3.png')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );
    // ignore: non_constant_identifier_names
    final screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
        children:
        [
         Container(
           height: screen_height*0.25,
            child:image_carousel,
          ),
          Flexible(child: Products(),), 
        ],
    ));
  }
}
