import 'package:flutter/material.dart';
import 'package:video_play_test/main.dart';
import 'package:video_play_test/my_colors.dart';

class ExerciseBox extends StatefulWidget {
  String title;

  ExerciseBox(String title) {
    this.title = title;
  }

  @override
  _ExerciseBox createState() => new _ExerciseBox();
}

class _ExerciseBox extends State<ExerciseBox> {
  @override
  void initState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        color: MyColors.secondary,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExerciseInContent()));
              },
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.fromLTRB(45, 15, 50, 15),
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 50, 0),
                        child: Text(
                          'Färdig',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[500],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
