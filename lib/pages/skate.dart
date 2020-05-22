import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skateboardingappbraille/widgets/left_drawer.dart';

class Skate extends StatefulWidget {
  @override
  _SkateState createState() => _SkateState();
}

class _SkateState extends State<Skate> {
  int player1;
  int player2;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player1 = 0;
    player2 = 0;
  }

  String getSkate(int skate){
    if(skate == 0){
      return 'assets/images/skate.png';
    } else if (skate == 1) {
      return 'assets/images/s.png';
    } else if (skate == 2) {
      return 'assets/images/sk.png';
    } else if (skate == 3) {
      return 'assets/images/ska.png';
    } else if (skate == 4) {
      return 'assets/images/skat.png';
    } else if (skate == 5) {
      return 'assets/images/skate_lose.png';
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S.K.A.T.E!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: (){
              showDialog(context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Official S.K.A.T.E. Rulebook'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('Flat ground only, but, that does not mean everything on flat ground counts.\n\nNo feet on the ground. That means no No Complys, no Hand plants, no Bonelesses, no grabs, and no "Malto manual bullshit".\n\nNo doing tricks that slide on the ground if your opponent popped their trick.\n\nLast letter gets two tries.\n\nOffensive toe drag gets one do over.\n\nDefensive toe drag has a bigger margin of error but will ultimately be decided by the referee.\n\nIf trick maker does not pop the trick but is still landed, the trick still counts.')
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  }
              );
            },
          )
        ],
      ),
      drawer: LeftDrawerWidget(),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget> [
              Text('Player 2',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),),
          RotatedBox(
            quarterTurns: 1,
            child: Image(image: AssetImage(getSkate(player1)),
            height: MediaQuery.of(context).size.width / 2.5,),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_upward),
                      onPressed: (){
                        if (player1 == 4){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Player 1 Wins!'),
                                  actions: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              }
                          );
                          setState(() {
                            player1 =0;
                            player2 =0;
                          });
                        } else {
                          setState(() {
                            player1 ++;
                          });
                        }
                      },
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_downward),
                      onPressed: (){
                        if (player1 == 0) {
                          return;
                        } else {
                          setState(() {
                            player1 --;
                          });
                        }
                      },
                    )
                  ],
                ),
              )
            ]
          ),
          Column(
            children: <Widget>[
              Text('Player 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              RotatedBox(
                quarterTurns: 1,
                child: Image(image: AssetImage(getSkate(player2)),
                  height: MediaQuery.of(context).size.width / 2.5,),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_upward),
                      iconSize: 50,
                      onPressed: (){
                        if (player2 == 4){
                          showDialog(context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Player 2 Wins!'),
                                  actions: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              }
                          );
                          setState(() {
                            player1 =0;
                            player2 =0;
                          });
                        } else {
                          setState(() {
                            player2 ++;
                          });
                        }
                      },
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_downward),
                      onPressed: (){
                        if (player2 == 0) {
                          return;
                        } else {
                          setState(() {
                            player2 --;
                          });
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
