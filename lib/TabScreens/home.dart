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
    Widget image_carousel = new Container(
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
      ),
    );
    final screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
        children:
        [
          Container(
            height: screen_height*0.2,
            child:image_carousel,
          ),
          Container(height: screen_height*0.6,child: Products(),),
          
        ],
    ));
  }
}
