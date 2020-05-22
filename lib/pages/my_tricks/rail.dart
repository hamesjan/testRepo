import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MTRail extends StatefulWidget {
  @override
  _MTRailState createState() => _MTRailState();
}

class _MTRailState extends State<MTRail> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(

            color: Colors.black
        ),
      ),
    );
  }
}