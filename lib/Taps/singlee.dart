import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/flutter_projects/designthree/lib/Cards/promo.dart';
import 'file:///E:/flutter_projects/designthree/lib/Cards/card.dart';
Widget mainwidget(){
  return Container(
    color: Colors.white,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Promotions !", style: TextStyle(
                fontSize: 24.0,fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            promocard(Colors.blueGrey, "Discover the Nike Collection", "20%",
                "images/fg.jpg")
            ,
            createlist("Jackets and coats","images/a1.jpg","images/a2.jpg","images/a3.jpg","images/a4.jpg","images/a5.jpg"),
            SizedBox(height: 8,),
            createlist("Trousers and shorts","images/b1.jpg","images/b2.jpg","images/b3.jpg","images/b4.jpg","images/b5.jpg"),
            createlist("Suits","images/c1.jpg","images/c2.jpg","images/c3.jpg","images/c4.jpg","images/c5.jpg"),
            createlist("Skirts and dresses","images/d1.jpg","images/d2.jpg","images/d3.jpg","images/d4.jpg","images/d5.jpg"),
            createlist("Shoes, boots and slippers","images/e1.jpg","images/e2.jpg","images/e3.jpg","images/e4.jpg","images/e5.jpg"),
            createlist("Lingerie and Underwear","images/f1.jpg","images/f2.jpg","images/f3.jpg","images/f4.jpg","images/f5.jpg"),
            createlist("Trousers and shorts","images/b1.jpg","images/b2.jpg","images/b3.jpg","images/b4.jpg","images/b5.jpg"),
            createlist("Suits","images/c1.jpg","images/c2.jpg","images/c3.jpg","images/c4.jpg","images/c5.jpg"),
            createlist("Skirts and dresses","images/d1.jpg","images/d2.jpg","images/d3.jpg","images/d4.jpg","images/d5.jpg"),
            createlist("Shoes, boots and slippers","images/e1.jpg","images/e2.jpg","images/e3.jpg","images/e4.jpg","images/e5.jpg"),
            createlist("Lingerie and Underwear","images/f1.jpg","images/f2.jpg","images/f3.jpg","images/f4.jpg","images/f5.jpg"),
            createlist("Trousers and shorts","images/b1.jpg","images/b2.jpg","images/b3.jpg","images/b4.jpg","images/b5.jpg"),
            createlist("Suits","images/c1.jpg","images/c2.jpg","images/c3.jpg","images/c4.jpg","images/c5.jpg"),
            createlist("Skirts and dresses","images/d1.jpg","images/d2.jpg","images/d3.jpg","images/d4.jpg","images/d5.jpg"),
            createlist("Shoes, boots and slippers","images/e1.jpg","images/e2.jpg","images/e3.jpg","images/e4.jpg","images/e5.jpg"),
            createlist("Lingerie and Underwear","images/f1.jpg","images/f2.jpg","images/f3.jpg","images/f4.jpg","images/f5.jpg"),
            createlist("Trousers and shorts","images/b1.jpg","images/b2.jpg","images/b3.jpg","images/b4.jpg","images/b5.jpg"),
            createlist("Suits","images/c1.jpg","images/c2.jpg","images/c3.jpg","images/c4.jpg","images/c5.jpg"),
            createlist("Skirts and dresses","images/d1.jpg","images/d2.jpg","images/d3.jpg","images/d4.jpg","images/d5.jpg"),
            createlist("Shoes, boots and slippers","images/e1.jpg","images/e2.jpg","images/e3.jpg","images/e4.jpg","images/e5.jpg"),
            createlist("Lingerie and Underwear","images/f1.jpg","images/f2.jpg","images/f3.jpg","images/f4.jpg","images/f5.jpg"),
            Center(child: Text("Sea more..", style: TextStyle(color: Colors.black26,fontSize: 15.0),))



          ],
        ),
      ),
    ),
  );
}

Widget createlist(String name, String img1,String img2,String img3,String img4,String img5){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 34.0,
        ),
        Text(name,style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),)
        , SizedBox(height: 20.0,)
        ,Container(
          height: 210.0,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              shoppingcard("red","200\$",img1),
              shoppingcard("blue","200\$",img2),
              shoppingcard("yellow","200\$",img3),
              shoppingcard("cyan","200\$",img4),
              shoppingcard("white","200\$",img5),
              shoppingcard("red","200\$",img1),
              shoppingcard("blue","200\$",img2),
              shoppingcard("yellow","200\$",img3),
              shoppingcard("cyan","200\$",img4),
              shoppingcard("white","200\$",img5),
            ],
          ),
        ),
      ],

    ),
  );


}