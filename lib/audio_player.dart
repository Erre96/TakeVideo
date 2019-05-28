import 'package:flutter/material.dart';
import 'package:video_play_test/my_colors.dart';
// är på 14.20 i videon

class MyHomePageState extends StatefulWidget{
    @override
    _MyHomePageState createState ()=> new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageState> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon : new Icon(
            Icons.arrow_back, 
          ), 
          color: const Color(0xFFDDDDDD),
          onPressed: (){},
        ),
        title: new Text(''),
        actions: <Widget>[
          new IconButton(
          icon : new Icon(
            Icons.menu, 
          ), 
          color: const Color(0xFFDDDDDD),
          onPressed: (){},
        ),
        ],
      ),
      body: new Column(
        children: <Widget>[

          new Expanded(
            child: new Container(

            ),
          ),

          //Visualizer
          new Container(
            width: double.infinity,
            height: 125.0,
          ),

          //song title, artist name and controls
          new Container(
            color: MyColors.secondary,
            child : new Padding(
           padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
            child: new Column(
            children: <Widget>[
              new RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    new TextSpan(
                      text: 'Song Title\n',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        height: 1.5,
                      )
                    ),
                    new TextSpan(
                      text: 'Artist name',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 12,
                        letterSpacing: 3.0,
                        height: 1.5,
                      )
                    )
                  ]
                ),
              ),
              
              new Row(
                children: <Widget>[
                  new Expanded(child: new Container()),

                  new IconButton(
                    icon : new Icon(
                      Icons.skip_previous),
                      color: Colors.white,
                      iconSize: 35.0,
                      onPressed: (){

                      },
                      ),

                  new Expanded(child: new Container()),

                  new Expanded(child: new Container()),
                  new IconButton(
                    icon : new Icon(
                      Icons.skip_next),
                      color: Colors.white,
                      iconSize: 35.0,
                      onPressed: (){

                      },
                      ),
                  

                  new Expanded(child: new Container()),

                ],
              ),
            ],
          ),
          ),
          ),
          ],
      ),
    );
  }
}