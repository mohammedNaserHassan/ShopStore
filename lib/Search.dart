import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(icon: Icon(Icons.close),
          onPressed:(){
            Navigator.of(context).pop();
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed:(){
      Navigator.of(context).pop();
    } );
  }
  String selectResults;

  @override
  Widget buildResults(BuildContext context) {
   return Container(
     child: Center(
       child: Text(selectResults),
     ),
   );
  }
final List<String> listexample;
  Search(this.listexample);
List<String> recent = ["txt3","txt4"];
  @override
  Widget buildSuggestions(BuildContext context) {
List<String> suggest = [];
query.isEmpty ? suggest = recent : suggest.addAll(listexample.where((element) => element.contains(query)));
return ListView.builder(itemCount: suggest.length,
itemBuilder: (context, index){
  return ListTile(title: Text(suggest[index]),onTap: (){
    selectResults = suggest[index];
    showResults(context);
  },);
},
);
  }
  
}