import 'package:e_shop/product_pages/product_page.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
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
      "picture": "images/products/blalzer.jpeg",
      "old_price": 1000,
      "price": 500,
    },
    {
      "name": "Shirt",
      "picture": "images/products/phone.jpg",
      "old_price": 105000,
      "price": 80000,
    },
    {
      "name": "Shirt",
      "picture": "images/products/tshirt12.png",
      "old_price": 800,
      "price": 400,
    },
    {
      "name": "Shirt",
      "picture": "images/products/blalzer.jpeg",
      "old_price": 1000,
      "price": 500,
    },
    {
      "name": "Shirt",
      "picture": "images/products/blalzer.jpeg",
      "old_price": 1000,
      "price": 500,
    },
    {
      "name": "Shirt",
      "picture": "images/products/blalzer.jpeg",
      "old_price": 1000,
      "price": 500,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext contex, int index) {
        return Single_prod(
          product_name: product_list[index]["name"],
          prod_pictures: product_list[index]['picture'],
          prod_oldprice: product_list[index]["old_price"],
          prod_price: product_list[index]["price"],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_pictures;
  final prod_oldprice;
  final prod_price;

  const Single_prod(
      {Key key,
      this.product_name,
      this.prod_pictures,
      this.prod_oldprice,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
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
                color: Colors.white70,
                child: ListTile(
                  leading: Text(product_name,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange[800],
                      )),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("\$$prod_oldprice",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough)),
                ),
              ),
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
