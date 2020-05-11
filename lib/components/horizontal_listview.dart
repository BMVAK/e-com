import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'img/cat/shirt.jpeg',
          image_caption: 'shirt',
        ),
          Category(
            image_location: 'img/cat/tshirt.jpeg',
            image_caption: 'tshirt',
          ),
          Category(
            image_location: 'img/cat/tshirt_men.jpeg',
            image_caption: 'tshirt_men',
          ),
          Category(
            image_location: 'img/cat/women.jpeg',
            image_caption: 'women',
          ),
          Category(
            image_location: 'img/cat/shoe.jpeg',
            image_caption: 'shoe',
          )



        ],
      ),
    );

  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
}
      );


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width: 50.0,
        height:40.0,),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption),
        )
    ),
    ),
    ),
    );
  }
}
