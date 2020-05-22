import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';

class MiniRampTracks extends StatefulWidget {
  @override
  _MiniRampTracksState createState() => _MiniRampTracksState();
}

class _MiniRampTracksState extends State<MiniRampTracks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Miniramp Tricks'),
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
