import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget shoppingc( String product_name, String price, String img){
  return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.black26),]
        ),
        margin: EdgeInsets.only(right: 10.0),
        width:120.0,
        height: 160.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 400,
              child:Image.asset(
                img,
                height: 100,
                width: 100,
              )
            ),

            Center(child: Text(product_name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0),)),

            Center(child: Text(price,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700,fontSize: 20.0),))

          ],
        ),
      ),

  );
}