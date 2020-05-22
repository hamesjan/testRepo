import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/widgets/menu_list.dart';

class LeftDrawerWidget extends StatefulWidget {
  @override
  _LeftDrawerWidgetState createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,
            color: Colors.blue,
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text('Navigation', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),
          new MenuListTileWidget(),
        ],
      ),
    );
  }
}
