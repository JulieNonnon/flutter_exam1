import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

class VideoHero extends StatelessWidget { 
    final String videoPath;

  const VideoHero({Key? key, required this.videoPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video Hero',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
    const VideoPlayerScreen({super.key});

    @override
    State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/video/v1.mp4');

  // 📼 Initialisation du controller et storer le Future pour plus tard
  _initializeVideoPlayerFuture = _controller.initialize();

  // 📼 Utilisation du controller pour boucler la vidéo
  _controller.setLooping(true);
  }

  @override
  void dispose() {

  // 📼 Met fin au cycle de vie de la vidéo
  _controller.dispose();

  super.dispose();

  }

// Construction structure de la video

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

    /*
    child: FloatingActionButton(
      onPressed: () {
        setState(() {
          if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
        });
      },

        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
      */
    );
  }
}

/*
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      // -------------------------- votre code ci dessous----------------
      child: const Center(
        child: Text(
          "Video background hero here !",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      //----------------------------------------------------------------
    );
  }
  */
