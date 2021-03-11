import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_oldprice;
  final product_details_picture;

  const Productpage(
      {Key key,
      this.product_details_name,
      this.product_details_price,
      this.product_details_oldprice,
      this.product_details_picture})
      : super(key: key);

  @override
  _ProductpageState createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
            ),
          )
        ],
      ),
    );
  }
}
