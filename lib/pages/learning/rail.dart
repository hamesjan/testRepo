import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';

class RailTricks extends StatefulWidget {
  @override
  _RailTricksState createState() => _RailTricksState();
}

class _RailTricksState extends State<RailTricks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rail Tricks'),
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
        )
        ,
      ),
    );
  }
}
