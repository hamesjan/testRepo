import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/widgets/left_drawer.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice'),
      ),
      body: ListView.builder(
        itemCount: 4,
          itemBuilder: (BuildContext context, int index){
            return PracticeCards(index: index);
          }
      ),
      drawer: LeftDrawerWidget(),
    );
  }
}


class PracticeCards extends StatelessWidget {
  const PracticeCards({
    Key key,
    @required this.index,
  }) : super(key:key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final category = List();
    category
      ..add('Flatground')
      ..add('Rail Tricks')
      ..add('Ledge Tricks')
      ..add('Miniramp Tricks');

    return Card(
      child: ListTile(
        //SizedBox(child: Image(image: AssetImage(image[index]),),),
          title: Text(category[index],
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          trailing: Icon(
            Icons.arrow_right
          ),
          onTap: (){
          }
      ),
    );
  }
}