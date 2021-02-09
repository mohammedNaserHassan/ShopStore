import 'package:flutter/material.dart';
Widget promocard(Color color,String title,String promo,String img){
  return Container(
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0)
    ),
    width: double.infinity,
    height: 220.0,
    child: Stack(
      children: [
        Positioned(
            width: 200.0,
            left: 8.0,
            top: 15.0,
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.bold),)
        ),
        Positioned(
            left: 8.0,
            top: 150.0,
            child: Text("Price $promo off",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 26.0),)
        ),
        Positioned(
            left: 200.0,
            top: 20,
            width: 180.0,
            height: 180,
            child: Image.network(img))
      ],
    ),
  );
}