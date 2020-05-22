import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skateboardingappbraille/widgets/left_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skateboardingappbraille/pages/my_tricks/flaground.dart';
import 'package:skateboardingappbraille/pages/my_tricks/rail.dart';
import 'package:skateboardingappbraille/pages/my_tricks/miniramp.dart';
import 'package:skateboardingappbraille/pages/my_tricks/ledge.dart';

import 'dart:convert';

class MyTricks extends StatefulWidget {
  @override
  _MyTricksState createState() => _MyTricksState();
}

class _MyTricksState extends State<MyTricks> with SingleTickerProviderStateMixin{
  SharedPreferences prefs;
  Map<String,bool> _flatground;
  Map<String,bool> _rail;
  Map<String,bool> _miniramp;
  Map<String,bool> _ledge;
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }


  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _flatground = Map<String,bool>.from(decodeMap(json.decode(prefs.getString("flatground") ?? "{}")));
      _flatground.removeWhere((key, value) => value == false);
      _rail = Map<String,bool>.from(decodeMap(json.decode(prefs.getString("rail") ?? "{}")));
      _rail.removeWhere((key, value) => value == false);
      _miniramp = Map<String,bool>.from(decodeMap(json.decode(prefs.getString("miniramp") ?? "{}")));
      _miniramp.removeWhere((key, value) => value == false);
      _ledge = Map<String,bool>.from(decodeMap(json.decode(prefs.getString("ledge") ?? "{}")));
      _ledge.removeWhere((key, value) => value == false);

    });
  }

  Map<String,dynamic> encodeMap(Map<DateTime,dynamic> map) {
    Map<String,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime,dynamic> decodeMap(Map<String,dynamic> map) {
    Map<DateTime,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Flatground'),
    ),
    drawer: LeftDrawerWidget(),
    body: SafeArea(
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MTFlatground(),
          MTRail(),
          MTMiniramp(),
          MTLedge()
        ],
      ),
    ),
    bottomNavigationBar: SafeArea(
     child: TabBar(
       controller: _tabController,
       labelColor: Colors.black12,
       unselectedLabelColor: Colors.black38,
       tabs: <Widget>[
         Tab(
                icon: Icon(Icons.schedule),
                text: 'Schedule',
              ),
         Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
         Tab(
                icon: Icon(Icons.create),
                text: 'Homework',
            ),
         Tab(
           icon: Icon(Icons.create),
           text: 'Homework',
         )
          ],
        ),
      ),
    );
  }
}
