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
                        child: Text("Size ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          child: Text("M",style: TextStyle(color: Colors.white,),),
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          child: Text("L",style: TextStyle(color: Colors.white,),),
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          child: Text("XL",style: TextStyle(color: Colors.white,),),
                        ),
                      )
                    ],
                  ),
                 
                ),
                SizedBox(height: 10,),
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
                        child: Text("Color ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          child: Text("Black",style: TextStyle(color: Colors.white,),),
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          child: Text("Blue",style: TextStyle(color: Colors.white,),),
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          color: Colors.black,
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          child: Text("Red",style: TextStyle(color: Colors.white,),),
                        ),
                      )
                    ],
                  ),
                 
                ),SizedBox(height: 10,),
                Container(
                  width: screen_weight,
                  height: 200,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 75,
                        alignment: Alignment.topRight,
                        child: Text("Description",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14))

                      ),
                      SizedBox(width: 10,),
                      
                      Container(
                        width: screen_weight*0.75,
                        alignment: Alignment.topRight,
                        
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text("We print and ship your orders one at a time in the seconds after your products have been purchased, then send you the profit. Our tech means 99% of orders are shipped the next working day, and we can deliver world-wide."),
                          ),

                      )
                    ],
                    ),
                  
                )
                ],
                              
              )
            ],
          )
        ],
      ),
    );
  }
}
