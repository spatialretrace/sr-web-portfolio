import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

class IntroVideo extends StatelessWidget {
  const IntroVideo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        // color: Colors.white,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: VideoPlayerScreen()),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  // late
  VideoPlayerController _controller;
  // late
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller =
        VideoPlayerController.asset('assets/about_video_placeholder.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // mutes the video
      _controller.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _controller.play();
    });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Butterfly Video'),
      // ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return Center(
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: SizedBox(
                    width: _controller.value.size.width ?? 0,
                    height: _controller.value.size.height ?? 0,
                    child: VideoPlayer(_controller)),
              ),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.amber,
          hoverColor: Colors.white,
          hoverElevation: 20,
          onPressed: () {
            // Wrap the play or pause in a call to `setState`. This ensures the
            // correct icon is shown.
            setState(() {
              // If the video is playing, pause it.
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                // If the video is paused, play it.
                _controller.play();
              }
            });
          },
          // Display the correct icon depending on the state of the player.
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
