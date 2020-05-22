import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';

class FlatTricks extends StatefulWidget {
  @override
  _FlatTricksState createState() => _FlatTricksState();
}

class _FlatTricksState extends State<FlatTricks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flatground Tricks'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
          onPressed: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LearnTricks()
                )
              );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: FlatTricksSearch());
            },

          )
        ],
      ),
      body: Center(
        child: Text('Hello')
      ),
    );
  }
}


class FlatTricksSearch extends SearchDelegate<String> {
  final tricks = [
    'Ollie',
    'Kickflip',
    'Treflip',
    'Backside 180',
    'Backside Kickflip',
    'Frontside Kickflip',
    'Frontside 180'
  ];

  List<dynamic> recentSearches = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for Appbar
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query = "";
    },)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearches
        : tricks.where((p) => p.startsWith(query)).toList();

    return Container(
      color:Colors.red,
      height: 100,
      width: 100,
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
    ? recentSearches
    : tricks.where((p) => p.toUpperCase().contains(query.toUpperCase())).toList();

    return ListView.builder(
    itemCount: suggestionList.length,
    itemBuilder: (context, index) => ListTile(
      onTap: (){
        query = '${suggestionList[index]}';
        recentSearches.add(query);
        showResults(context);
      },
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black,
            fontWeight: FontWeight.bold
        ),
          children: [
            TextSpan(
              style: TextStyle(
                color: Colors.black
              ),
              text: suggestionList[index].substring(query.length),
            )
          ]
         ),
       ),
     )
    );
  }

}