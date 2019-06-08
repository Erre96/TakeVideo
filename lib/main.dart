import 'package:flutter/material.dart';
import 'package:video_play_test/video_player.dart';
import 'package:video_play_test/exercise_box.dart';
import 'package:video_play_test/my_colors.dart';
import 'package:video_play_test/audio_players_test.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new ExerciseListPage(),
  ));
}

class ExerciseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: MyColors.secondaryVariant,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Introduktion'),
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
        child: Column(children: <Widget>[
          new ExampleApp(),
          new ExerciseBox('Övning 1'),
          new ExerciseBox('Övning 2'),
          new ExerciseBox('Övning 3'),
        ]),
      ),
    );
  }
}

class ExerciseInContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: MyColors.secondaryVariant,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text('Introduktion'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new VideoPlayerApp(),
            new Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              child: Text('Beskrivning av övningen är följande...',style: TextStyle(color: Colors.white),),),
            ),
            new ExampleApp(),
          ]
          ,)


      ),
    );
  }
}

class Chapter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Avsnitt'),
      ),
      body: Container(
        child: VideoPlayerApp(),
      ),
    );
  }
}
