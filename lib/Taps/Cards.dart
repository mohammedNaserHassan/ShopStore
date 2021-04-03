import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'file:///E:/flutter_projects/designthree/lib/Cards/shopping.dart';
Widget carttab(){
  return Container(
    color: Colors.pink,
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
            Center(child: Text("My Cart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.amberAccent),),),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text("Total price",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 50,),
                Text("995\$",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.orange)),
              ],
            ),
            Center(child: createlist("","images/a1.jpg","images/a2.jpg","images/a3.jpg","images/a4.jpg","images/a5.jpg")),





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
        height: 522,
        width: 300,
        child: ListView(
          children: [
            shoppingc("red jacket","200\$",img1),
          Icon(Icons.delete),
            SizedBox(height: 5,),
            shoppingc("blue jeans","200\$",img2),
            Icon(Icons.delete),
            SizedBox(height: 5,),
            shoppingc("yellow jacket","300\$",img3),
            Icon(Icons.delete),
            SizedBox(height: 5,),
            shoppingc("cyan cheek","175\$",img4),
            Icon(Icons.delete),
            SizedBox(height: 5,),
            shoppingc("white jacket","120\$",img5),
            Icon(Icons.delete),
            SizedBox(height: 5,),
          ],
        ),
      ),
    ],

  );
}