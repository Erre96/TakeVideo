import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'my_colors.dart';

void main() => runApp(VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayerScreen(),
    );  
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  double sliderValue = 0;
  int totalDurationSeconds = 10;
  bool finishedLoading;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initialize the controller and store the Future for later use
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure you dispose the VideoPlayerController to free up resources
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children : <Widget>[
          // Use a FutureBuilder to display a loading spinner while you wait for the
      // VideoPlayerController to finish initializing.
      new FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
           if(finishedLoading == false){
              setState(() {
                finishedLoading = true;
                totalDurationSeconds = _controller.value.duration.inSeconds;
            });
           }
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the Aspect Ratio of the Video
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      new FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),

          new Slider(
            min: 0,
            max : totalDurationSeconds.toDouble(),
            divisions: totalDurationSeconds,
            value: sliderValue,
            activeColor: MyColors.primary,
            inactiveColor: MyColors.secondaryVariant,
            onChanged: (newValue)
            {
              setState(() {
                sliderValue = newValue;
                if(sliderValue >= 0.0 && sliderValue >= 0.0)
                {
                  _controller.seekTo(Duration(seconds: sliderValue.toInt()));
                }
              });
            },
          ),
       // This trailing comma makes auto-formatting nicer for build methods.
        ]
      ),
    );
}
}