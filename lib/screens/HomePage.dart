import 'package:e_shop/TabScreens/catagory.dart';
import 'package:e_shop/TabScreens/home.dart';
import 'package:e_shop/TabScreens/profile.dart';
import 'package:e_shop/TabScreens/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  final List<Widget> tabs = [Home(), Catagory(), Cart(), Profile()];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      icon: IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange[800],
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          iconSize: 17,
          selectedFontSize: 13,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                "Home",
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text(
                "Catagory",
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp),
                title: Text(
                  "Cart",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text(
                  "Profile",
                )),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          }),
    );
  }
}
