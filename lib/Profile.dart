import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget profiletap(){
  return Container(
    color: Colors.cyan,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      height: 120.0,
      margin:  EdgeInsets.all(10.0),
      decoration:  BoxDecoration(
          borderRadius:  BorderRadius.all( Radius.circular(10.0)),
          gradient:  LinearGradient(colors: [Colors.pink[500], Colors.yellow,Colors.cyan],
              begin: Alignment.center, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child:  Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
                  child:  CircleAvatar(radius: 45.0,
                    child: Image.asset('images/moha.jpg'),
                  )
              ),
              Expanded(child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Mohammed Naser ALshweikh', style:  TextStyle(fontSize: 18.0, color: Colors.white70, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8.0,),
                  Text('Shoakk2015@gmail.com', style:  TextStyle(fontSize: 13.0, color: Colors.white70),),
                  SizedBox(height: 10.0,),
                  Row(children: <Widget>[
                    Column(children: <Widget>[
                      Text('2342', style:  TextStyle(fontSize: 12.0, color: Colors.white)),
                      Text('Popularity', style:  TextStyle(fontSize: 10.0, color: Colors.white)),
                    ],),
                    Column(children: <Widget>[
                      Text('2342', style:  TextStyle(fontSize: 12.0, color: Colors.white)),
                      Text('Like', style:  TextStyle(fontSize: 10.0, color: Colors.white)),
                    ],),
                    Column(children: <Widget>[
                      Text('2342', style: TextStyle(fontSize: 12.0, color: Colors.white)),
                      Text('Cart', style:TextStyle(fontSize: 10.0, color: Colors.white)),
                    ],)
                  ],)
                ],)),
              Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('12°', style:  TextStyle(fontSize: 30.0, color: Colors.black),),
                      Text('Ranking', style: TextStyle(fontSize: 14.0, color: Colors.black),),
                    ],
                  )
              )
              ,
            ],
          ),
        ],
      ),


    )
       ,
        Container(
          child:  ListTile(title: Text("Edit personal information", style: TextStyle(color: Colors.white70
          ),),leading: Icon(Icons.edit),trailing: Icon(Icons.arrow_forward_ios)),

        ),
        Container(
          child:  ListTile(title: Text("Login"),leading: Icon(Icons.login),trailing: Icon(Icons.arrow_forward_ios),),

          ),
        Container(
          child:  ListTile(title: Text("Change password"),leading: Icon(Icons.block_rounded),trailing: Icon(Icons.arrow_forward_ios)),

        ),
        Container(
          child:  ListTile(title: Text("Settings"),leading: Icon(Icons.build),trailing: Icon(Icons.arrow_forward_ios)),

        ),
        Container(
          child:  ListTile(title: Text("Invite friends"),leading: Icon(Icons.insert_invitation),trailing: Icon(Icons.arrow_forward_ios)),
        ),


        Container(
          color: Colors.cyan,
          child: Column(
            children: [
              info("Account Information","View More",0,50),
              info("Phone Number","0597735620",5,10),
              info("Email Address","Shoakk2015@gmail.com",5,10),
              info("Date of Birth","20/10/1999",5,23),
              info("Gender","Male",5,63),
            ],
          ),
        )




          ],
    ),
  );

}
Widget info(String text, String subtex, double x, double y){
  return  Container(
    alignment: Alignment.bottomLeft,
    child: Row(
      children: [
        Container( margin: EdgeInsets.only(left: x),child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)),
        SizedBox(width: 100,),
        Container( margin: EdgeInsets.only(left: y),child: Text(subtex,style:TextStyle(color: Colors.white70),))
      ],
    ),
  );
}