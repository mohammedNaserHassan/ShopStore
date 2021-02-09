import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:designthree/shopping.dart';
Widget favouritetab(){
  return Container(
    color: Colors.cyan,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
    Center(child: Text("Favourite",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.amberAccent),),),

    Center(child: createlist("My Favourite","images/a1.jpg","images/a2.jpg","images/a3.jpg","images/a4.jpg","images/a5.jpg")),






          ],
        ),
      ),
    ),
  );
}

Widget createlist(String name, String img1,String img2,String img3,String img4,String img5){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text(name,style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),)

      ,Container(
        height: 600,
        width: 300,
        child: ListView(
          children: [
            shoppingc("red","200\$",img1),
            shoppingc("blue","200\$",img2),
            shoppingc("yellow","300\$",img3),
            shoppingc("cyan","175\$",img4),
            shoppingc("white","120\$",img5),
          ],
        ),
      ),
    ],

  );


}