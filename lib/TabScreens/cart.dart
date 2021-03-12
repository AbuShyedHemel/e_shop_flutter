import 'package:e_shop/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$500"),
            )),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("Check out",style: TextStyle(color: Colors.white),),
            color: Colors.orange[900],))
          ],
        ),
      ),
      
    );
  }
}