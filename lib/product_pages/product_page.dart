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
  var _color = ["Red", "Yellow", "Blue"];
  var currentItem = "Red";
  @override
  Widget build(BuildContext context) {
    final screen_weight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                              "Color ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButton<String>(
                          items: _color.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(() {
                              this.currentItem = newValue;
                            });
                            
                          },
                          value: currentItem,

                        )
                      ],
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
                child: Text("X"),
              )
            ],
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(8.0),
          child: Text("Similar Product"),),
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
    var product_list = [
    {
      "name": "Shirt",
      "picture": "images/products/tshirt1.png",
      "old_price": 500,
      "price": 300,
    },
    {
      "name": "Shirt",
      "picture": "images/products/tshirt12.png",
      "old_price": 800,
      "price": 400,
    },

    {
      "name": "Shirt",
      "picture": "images/products/tshirt12.png",
      "old_price": 800,
      "price": 400,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext contex, int index) {
        return Similar_Single_prod(
          product_name: product_list[index]["name"],
          prod_pictures: product_list[index]['picture'],
          prod_oldprice: product_list[index]["old_price"],
          prod_price: product_list[index]["price"],
        );
      },
    );
  }
}
class Similar_Single_prod extends StatelessWidget {
  final product_name;
  final prod_pictures;
  final prod_oldprice;
  final prod_price;

  const Similar_Single_prod(
      {Key key,
      this.product_name,
      this.prod_pictures,
      this.prod_oldprice,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("Hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => new Productpage(
                      product_details_name: product_name,
                      product_details_price: prod_price,
                      product_details_oldprice: prod_oldprice,
                      product_details_picture: prod_pictures,
                    ))),
            child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      Text(
                        "\$${prod_price}",
                        style: TextStyle(color: Colors.orange[800]),
                      )
                    ],
                  )),
              child: Image.asset(
                prod_pictures,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

