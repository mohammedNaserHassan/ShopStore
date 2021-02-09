import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
StatefulWidget shoppingcard( String product_name, String price, String img){
 Color color = Colors.black;
  return Material(
    child: Container(
      color: Colors.white
      ,child: InkWell(
        onTap: (){},

        child: Padding(
          padding: const EdgeInsets.all(0.0),
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
                  height: 100,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(img),
                  ),
                ),

                SizedBox(height: 8.0,),
                Text(product_name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0),),
                SizedBox(height: 8.0,),
                Text(price,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700,fontSize: 20.0),)
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.favorite_border,color: color,),onPressed: (){
                    setState(){
                      color = Colors.red;
                    }
                    }),
                    IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){},),
                  ],)
              ],
            ),
          ),
        ),
      ),
    ),
  );
}