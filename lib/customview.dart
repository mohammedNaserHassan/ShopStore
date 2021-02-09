import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Custom scrollview';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              //title: Center(child: Container(margin: EdgeInsets.only(top: 20),child: Text(title))),
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Image(image: AssetImage('images/a1.jpg'),),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 240,
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                    (context, index) => ListTile(title: Text('Jacket #$index')),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}