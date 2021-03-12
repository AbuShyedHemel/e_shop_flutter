import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
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

class Single_cart_products extends StatelessWidget {
  final cart_product_name;
  final cart_prod_pictures;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;

  const Single_cart_products(
      {Key key,
      this.cart_product_name,
      this.cart_prod_pictures,
      this.cart_prod_size,
      this.cart_prod_price,
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
