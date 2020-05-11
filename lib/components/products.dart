import 'package:flutter/material.dart';
import 'package:demo/pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      'name':"dress1",
      'picture':"img/products/x.jpg",
      'old_price':120,
      'price':100,
    },
    {
      'name':"dress2",
      'picture':"img/products/y.jpg",
      'old_price':150,
      'price':120,
    },
    {
      'name':"dress3",
      'picture':"img/products/z.jpg",
      'old_price':10,
      'price':12,
    },
    {
      'name':"dress4",
      'picture':"img/products/o.jpg",
      'old_price':120,
      'price':100,
    },
    {
      'name':"dress5",
      'picture':"img/products/p.jpg",
      'old_price':1200,
      'price':100,
    },
    {
      'name':"dress6",
      'picture':"img/products/s.jpg",
      'old_price':112,
      'price':101,
    },
    {
      'name':"dress7",
      'picture':"img/products/t.jpg",
      'old_price':120,
      'price':100,
    },
    {
      'name':"dress1",
      'picture':"img/products/x.jpg",
      'old_price':120,
      'price':100,
    },
    {
      'name':"dress1",
      'picture':"img/products/x.jpg",
      'old_price':120,
      'price':100,
    },
    {
      'name':"dress1",
      'picture':"img/products/x.jpg",
      'old_price':120,
      "price":100,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Single_prod(
              prod_name:
              product_list[index]['name'],
              prod_pictures: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );

        }

    );


  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pictures,
    this.prod_old_price,
    this.prod_price,
}
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child:Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
              //  here we are passing the values of the product to the product_details
                builder: (context)=> new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_pictures,
                ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: new Row(
                children: <Widget>[
                  Expanded(
                      child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  ),
                  new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            child: Image.asset(prod_pictures,
            fit: BoxFit.cover,
            ),
          ),
          ),
        ) ,),
    );
  }
}
