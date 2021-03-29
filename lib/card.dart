import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class shoppingcard extends StatefulWidget {

  String product_name,price,img;

  @override
  _shoppingcardState createState() => _shoppingcardState(product_name,price,img);

  shoppingcard(this.product_name, this.price, this.img);
}

class _shoppingcardState extends State<shoppingcard> {
  bool isFavorited = false;
  bool isCard = false;
  Color color = Colors.black;
  String product_name,price,img;
  void toggleFavorite() {
    setState((){
      isFavorited = !isFavorited;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Material(
      child: Container(
        color: Colors.white
        ,child: InkWell(
        onTap: (){},

        child: Card(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.black26),]
            ),
            margin: EdgeInsets.only(right: 10.0),
            width: 120.0,
            height: 160.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80.0,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(img),
                  ),
                ),

                SizedBox(height: 5.0,),
                Center(child: Text(product_name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0),)),
                SizedBox(height: 5.0,),
                Text(price,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700,fontSize: 20.0),)
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   IconButton(icon:  isFavorited ? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
                       onPressed: toggleFavorite
                   )
                    ,
                    IconButton(icon:  isCard ? Icon(Icons.add_shopping_cart,color: Colors.yellow,):Icon(Icons.add_shopping_cart),
                      onPressed: (){
                      setState(() {
                        isCard = !isCard;
                      });
                      },),
                  ],)
              ],
            ),
          ),
        ),

      ),
      ),
    );
  }

  _shoppingcardState(this.product_name, this.price, this.img);
}


