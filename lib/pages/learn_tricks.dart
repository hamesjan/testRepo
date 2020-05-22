import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skateboardingappbraille/widgets/left_drawer.dart';
import 'package:skateboardingappbraille/pages/learning/flatground.dart';
import 'package:skateboardingappbraille/pages/learning/miniramp.dart';
import 'package:skateboardingappbraille/pages/learning/ledge.dart';
import 'package:skateboardingappbraille/pages/learning/getting_started.dart';
import 'package:skateboardingappbraille/pages/learning/rail.dart';



class LearnTricks extends StatefulWidget {
  @override
  _LearnTricksState createState() => _LearnTricksState();
}

class _LearnTricksState extends State<LearnTricks> {
  @override
  Widget build(BuildContext context) {
    final category = List();
    category
      ..add('Getting Started')
      ..add('Flatground')
      ..add('Rail')
      ..add('Ledge')
      ..add('Miniramp');

    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Tricks'),
      ),
      drawer: LeftDrawerWidget(),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            ListTile(
              title: Text(category[0]),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => GettingStarted()
                  )
                );
              },
            ),
            ListTile(
              title: Text(category[1]),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => FlatTricks()
                    )
                );
              },
            ),
            ListTile(
              title: Text(category[2]),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => RailTricks()
                    )
                );
              },
            ),
            ListTile(
              title: Text(category[3]),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LedgeTricks()
                    )
                );
              },
            ),
            ListTile(
              title: Text(category[4]),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MiniRampTracks()
                    )
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
