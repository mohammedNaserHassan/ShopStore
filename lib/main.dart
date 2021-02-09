import 'package:designthree/Cards.dart';
import 'package:designthree/Profile.dart';
import 'package:designthree/card.dart';
import 'package:designthree/favourite.dart';
import 'package:designthree/promo.dart';
import 'package:flutter/material.dart';
import 'package:designthree/singlee.dart';

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
int _index = 0;
static List<Widget> _widgetOptions = <Widget>[
  mainwidget(),
  favouritetab(),
  carttab(),
  profiletap(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Container(
            child: Text(" Clothes Store",style: TextStyle(color: Colors.white,),)),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}
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

                backgroundImage:  NetworkImage('https://scontent.fgza7-1.fna.fbcdn.net/v/t1.0-9/127238377_2550135671943327_4312218058092117320_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=uYTsNbjU-ioAX9-lrkH&_nc_ht=scontent.fgza7-1.fna&oh=75f4018ced031a876f16f9dfc2d1bdae&oe=5FE9419A'),
              )
               ,),
            ListTile(title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22), ),leading: Icon(Icons.account_box),),

        Container(child: ListTile(title: Text("Favourite"),leading: Icon(Icons.favorite_border)), )
        ,Container(child: ListTile(leading: Icon(Icons.add_shopping_cart),title: Text("My Cards")),)
        ,Container(child: ListTile(title: Text("Notifications"),leading: Icon(Icons.notifications)),)
        , Container(child: ListTile(title: Text("About Us"),leading: Icon(Icons.assignment_late)),),
         Container(child: ListTile(title: Text("Rate App"),leading: Icon(Icons.star_rate_sharp)), ),
         Container(child: ListTile(title: Text("Share App"),leading: Icon(Icons.share)), ),
            Container(child: ListTile(title: Text("Logout"),leading: Icon(Icons.close)),),
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

