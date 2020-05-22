import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MTFlatground extends StatefulWidget {
  final Map flatTricks;

  const MTFlatground ({ Key key, this.flatTricks}): super(key: key);
  @override
  _MTFlatgroundState createState() => _MTFlatgroundState();
}

class _MTFlatgroundState extends State<MTFlatground> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index){
        return ListTile(
         // title: widget.flatTricks.,
        );
      }),
    );
  }
}
