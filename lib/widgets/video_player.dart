import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrickVid extends StatefulWidget {
  @override
  _TrickVidState createState() => _TrickVidState();
}

class _TrickVidState extends State<TrickVid> {
  String videoURL = "https://www.youtube.com/watch?v=n8X9_MgEdCg";

  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: YoutubePlayer(
        width: MediaQuery.of(context).size.width,
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}
