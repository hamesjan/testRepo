import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/widgets/left_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skateboarding App'),
      ),
      body: Center(
        child: Text('JSEFIEF'),
      ),
      drawer: LeftDrawerWidget(),
    );
  }
}
