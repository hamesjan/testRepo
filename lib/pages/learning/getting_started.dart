import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';

class GettingStarted extends StatefulWidget {
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getting Started'),
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
