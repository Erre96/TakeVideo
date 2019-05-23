import 'package:flutter/material.dart';
import 'package:video_play_test/video_player.dart';

void main() {
  runApp(new MaterialApp(
    home: new Del(),
  ));
}

class Del extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text('Introduktion'),
    ),
    body: Container(
      child: VideoPlayerApp(),
    ),
    );
  }
}

