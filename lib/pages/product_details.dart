import 'package:demo/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()),
            );},
            child: Text('Shopapp')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: (){}),

        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("\$${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),

                        )
                      ),
                      Expanded(
                          child:new Text("\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ======================the first button =======================
          Row(
            children: <Widget>[
              //  ==================the size button ======================
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("size"),
                      content: new Text("choose the color"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),

                    ],
                  ),
                ),
              ),
              //  ==================the size button ======================
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("choose a color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),

                    ],
                  ),
                ),
              ),

              //  ==================the size button ======================
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Qty"),
                          content: new Text("choose Qty"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),


          // ======================the Second button =======================
          Row(
            children: <Widget>[
              //  ==================the size button ======================
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child:new Text("Buy"),
                ),
              ),
              new IconButton(icon:Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),
              new IconButton(icon:Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: new Text("product_name",style: TextStyle(color: Colors.green),),
            ),
            Padding(padding: const EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),
            )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("product_brand",style: TextStyle(color: Colors.green),),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              )
              //   ================== remember to create the product brand ================
            ],
          ),
//              ===================== add the product condition =======================
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("product_condition",style: TextStyle(color: Colors.green),),
              ),

              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("New"),
              )
            ],
          ),
            Divider(),
            Padding(padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),

  //       ================== similar product section ========================

          Container(
            height:380.0,
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


  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Similar_single_prod(
            prod_name:
            product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );

        }

    );


  }
}


class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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