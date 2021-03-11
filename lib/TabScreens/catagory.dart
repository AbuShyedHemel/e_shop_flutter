import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Row(
        children: [
          Container(
            color: Colors.white,
            height: screenheight,
            width: 80,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CatMethod(
                    image_location: 'images/catagory/1.png',
                    image_caption: 'Shirt',
                  ),
                  CatMethod(
                    image_location: 'images/catagory/tv.png',
                    image_caption: 'Devices',
                  ),
                  CatMethod(
                    image_location: 'images/catagory/3.png',
                    image_caption: 'Shirt',
                  ),
                  CatMethod(
                    image_location: 'images/catagory/1.png',
                    image_caption: 'Shirt',
                  ),
                  CatMethod(
                    image_location: 'images/catagory/1.png',
                    image_caption: 'Shirt',
                  ),
                  CatMethod(
                    image_location: 'images/catagory/1.png',
                    image_caption: 'Shirt',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CatMethod extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const CatMethod({Key key, this.image_location, this.image_caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 20.0,
              width: 20.0,
            ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
