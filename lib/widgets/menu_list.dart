import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/pages/learn_tricks.dart';
import 'package:skateboardingappbraille/pages/skate.dart';
import 'package:skateboardingappbraille/pages/home.dart';
import 'package:skateboardingappbraille/pages/practice.dart';
import 'package:skateboardingappbraille/pages/my_tricks.dart';

class MenuListTileWidget extends StatefulWidget {
  @override
  _MenuListTileWidgetState createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home()
                )
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.done_outline),
          title: Text('Learn Tricks'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LearnTricks()
                )
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('My Tricks'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyTricks()
                )
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.loop),
          title: Text('Practice Tricks'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Practice()
                )
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.videogame_asset),
          title: Text('Game of S.K.A.T.E.'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Skate()
                )
            );
          },
        ),
      ],
    );
  }
}
