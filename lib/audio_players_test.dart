import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ExampleApp()));
}

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => new _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {

  static AudioCache advancedPlayer = new AudioCache(prefix: 'tracks/');

  @override
  initState() {
    super.initState();
    playLocal();
  }

  Future loadMusic() async {
    playLocal();
    //advancedPlayer = await AudioCache().loop("assets/tracks/gg.mp3");
  }
    playLocal() async {
      advancedPlayer.play('gg.mp3');
    }
  /*
    play() async {
    int result = await advancedPlayer.play('https://api.soundcloud.com/tracks/434370309/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P');
    //int result = await advancedPlayer.play('assets/tracks/gg.mp3');
    if (result == 1) {
      // success
    }
  }


  @override
  void dispose() {
    advancedPlayer = null;
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 55),
    );
  }
}
