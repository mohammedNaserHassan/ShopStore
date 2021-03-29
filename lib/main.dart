
import 'dart:async';
import 'dart:convert' show json;
import "package:http/http.dart" as http;
import 'package:google_sign_in/google_sign_in.dart';

import 'package:designthree/Cards.dart';
import 'package:designthree/Profile.dart';
import 'package:designthree/Search.dart';
import 'package:designthree/card.dart';
import 'package:designthree/favourite.dart';
import 'package:designthree/promo.dart';
import 'package:flutter/material.dart';
import 'package:designthree/singlee.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Second(),
      title: Text("App Store"),
      image: Image.asset('images/xx.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Colors.indigo,
    );
  }

}
class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int _index = 0;
  final List<String> _list = List.generate(10, (index) => "Text $index");
  static List<Widget> _widgetOptions = <Widget>[
    mainwidget(),
    favouritetab(),
    carttab(),
    profiletap(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Container(
            child: Text(" Clothes Store",style: TextStyle(color: Colors.white,),)),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: Search(_list));
            }
            ,
          )
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer:  Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Mohammed N Alshweikh"), accountEmail: Text("Shoakk2015@gmail.com")
              , currentAccountPicture:  CircleAvatar(
                radius: 45.0,
                child: Image.asset('images/moha.jpg'),
              )
              ,),
            ListTile(title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22), ),leading: Icon(Icons.account_box),),
            Container(child: ListTile(title: Text("Settings"),leading: Icon(Icons.settings)), ),
            Container(child: ListTile(title: Text("Language"),leading: Icon(Icons.language)), )
            ,
            Container(child: ListTile(title: Text("Favourite"),leading: Icon(Icons.favorite_border)), )
            ,Container(child: ListTile(leading: Icon(Icons.add_shopping_cart),title: Text("My Cards")),)
            ,Container(child: ListTile(title: Text("Notifications"),leading: Icon(Icons.notifications)),)
            , Container(child: ListTile(title: Text("About Us"),leading: Icon(Icons.assignment_late)),),
            Container(child: ListTile(title: Text("Rate App"),leading: Icon(Icons.star_rate_sharp)), ),
            Container(child: ListTile(title: Text("Help and Support"),leading: Icon(Icons.contact_support)), ),
            Container(child: ListTile(title: Text("Share App"),leading: Icon(Icons.share)), ),
            Container(child: ListTile(title: Text("Logout"),leading: Icon(Icons.close),onTap: (){Navigator.of(context).pop();},),),
          ],
        ),

      ),
      backgroundColor:  Colors.white,
      body: _widgetOptions.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home"),),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("Favourite")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("Cart")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Profile")),
        ],
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}


