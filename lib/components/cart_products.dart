import 'package:flutter/material.dart';
// ignore: camel_case_types
class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

// ignore: camel_case_types
class _Cart_productsState extends State<Cart_products> {
  // ignore: non_constant_identifier_names
  var product_on_cart = [
    {
      "name": "Shirt",
      "picture": "images/products/tshirt1.png",
      "price": 300,
      "size": "M",
      "color": "Red"
    },
    {
      "name": "Blazer",
      "picture": "images/products/blalzer.jpeg",
      "price": 500,
      "size": "M",
      "color": "Red"
    },
    {
      "name": "Phone",
      "picture": "images/products/blalzer.jpeg",
      "price": 500,
      "size": "M",
      "color": "Red"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_on_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_products(
            cart_product_name: product_on_cart[index]["name"],
            cart_prod_color: product_on_cart[index]["color"],
            cart_prod_pictures: product_on_cart[index]["picture"],
            cart_prod_price: product_on_cart[index]["price"],
            cart_prod_size: product_on_cart[index]["size"],
          );
        });
  }
}

// ignore: camel_case_types
class Single_cart_products extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final cart_product_name;
  // ignore: non_constant_identifier_names
  final cart_prod_pictures;
  // ignore: non_constant_identifier_names
  final cart_prod_size;
  // ignore: non_constant_identifier_names
  final cart_prod_price;
  // ignore: non_constant_identifier_names
  final cart_prod_color;

  const Single_cart_products(
      {Key key,
      // ignore: non_constant_identifier_names
      this.cart_product_name,
      // ignore: non_constant_identifier_names
      this.cart_prod_pictures,
      // ignore: non_constant_identifier_names
      this.cart_prod_size,
      // ignore: non_constant_identifier_names
      this.cart_prod_price,
      // ignore: non_constant_identifier_names
      this.cart_prod_color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
  // ==================Leading====================//
        leading: Image.asset(cart_prod_pictures,),
  // ================Title====================//
        title: Text(cart_product_name),
        // =============Subtitle==========//
        subtitle: Column(
          children: [
            Row(
              children: [
                // ==========Size============//
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size :"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cart_prod_size,style: TextStyle(color: Colors.orange[900],fontWeight: FontWeight.bold),)
                ),
                // ==========Color=============//
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color :"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cart_prod_color,style: TextStyle(color: Colors.orange[900],fontWeight: FontWeight.bold),),
                ),
                
              ],
            ),
            // ===========Price===========//
            Container(
                  alignment: Alignment.topLeft,
                  // ignore: unnecessary_brace_in_string_interps
                  child: Text("\$${cart_prod_price}",style: TextStyle(color: Colors.orange[900],fontWeight: FontWeight.bold),)
                )
          ],
        ),
        trailing: Container(
          child:
            IconButton(icon: Icon(Icons.arrow_drop_down,size: 15,), onPressed: (){},),
            //IconButton(icon: Icon(Icons.arrow_drop_down,size: 15,), onPressed: (){},)
        ),
      ),
    );
  }
}
