import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_oldprice;
  final product_details_picture;

  Productpage({
    this.product_details_name,
    this.product_details_price,
    this.product_details_oldprice,
    this.product_details_picture,
  });

  @override
  _ProductpageState createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    final screen_weight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.orange[800],
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_details_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.orange[800],
                      )),
                  title: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 35, left: 40)),
                      Expanded(
                          child: Text(
                        "\$${widget.product_details_oldprice}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_details_price}",
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 11)),
          Row(
            children: [
              Column(
                children: [
                  ///////////////////////////Size///////////////////////
                  Container(
                    height: 80,
                    width: screen_weight,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                            width: 75,
                            alignment: Alignment.center,
                            child: Text(
                              "Size ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            color: Colors.black,
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "M",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            color: Colors.black,
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "L",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            color: Colors.black,
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "XL",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
///////////////////////////////////////////Color///////////////////////////
                  SingleChildScrollView(
                    child: Container(
                      height: 80,
                      width: screen_weight,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                              width: 75,
                              alignment: Alignment.center,
                              child: Text(
                                "Color ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: Colors.black,
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "Black",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: Colors.black,
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "Blue",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: Colors.black,
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "Red",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.black,
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.shopping_cart_outlined),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.favorite_border_outlined),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "We print and ship your orders one at a time in the seconds after your products have been purchased, then send you the profit. Our tech means 99% of orders are shipped the next working day, and we can deliver world-wide."),
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Name"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_details_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Brand"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_details_name),
              )
            ],
          )
        ],
      ),
    );
  }
}
