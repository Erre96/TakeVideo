import 'package:flutter/material.dart';
import 'package:video_play_test/video_player.dart';
import 'package:video_play_test/exercise_box.dart';
import 'package:video_play_test/my_colors.dart';

void main() {
  runApp(new MaterialApp(
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
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
        child: Column(children: <Widget>[
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
        child: VideoPlayerApp(),
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
