import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';

class LedgeTricks extends StatefulWidget {
  @override
  _LedgeTricksState createState() => _LedgeTricksState();
}

class _LedgeTricksState extends State<LedgeTricks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ledge Tricks'),
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
