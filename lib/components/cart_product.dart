import 'package:flutter/material.dart';


class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var Products_on_the_cart =[
    {
      'name':"dress1",
      'picture':"img/products/x.jpg",
      'price':100,
      'Size':"m",
      'color':"Red",
      'Qty': 1,
    },
    {
      'name':"dress2",
      'picture':"img/products/y.jpg",
      'price':120,
      'Size':8,
      'color':"Black",
      'Qty': 1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_pictures: Products_on_the_cart[index]["Picture"],
          cart_prod_price: Products_on_the_cart[index]["Picture"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["Qty"],
        );
    }
    );
  }
}


class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pictures,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
});



  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //   =============== leading section ==================
        leading: new Image.asset(cart_prod_pictures,width: 80.0,
        height: 80.0,
        ),

        // ================ TITLE SECTION ===============
        title: new Text(cart_prod_name),

        // ============== subtitle section ============
        subtitle: new Column(
          children: <Widget>[
            //     ==================        ROW inside column            ==================
            new Row(
              children: <Widget>[
                // =========== this section is of the product ============
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(cart_prod_size,style: TextStyle(color:Colors.red),),
                ),
                //   ==============  this section of for the product color ================
                Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color,style: TextStyle(color:Colors.red),),
                ),

              ],
            ),
  //        ============ this section is product price ===================
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
                  style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  )),
            ),

            //  ============ this section is the product price =============
            new Container(
                child: new Text("\$${cart_prod_price}",style: TextStyle(fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                ),),
            )
          ],
        ),

        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
          ],
        ),
      ),
    );
  }
}

