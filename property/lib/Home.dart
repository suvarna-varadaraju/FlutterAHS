import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'Colours.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<Home> {
  late VideoPlayerController _controller;
  double opacity = 1.0;

  void initState() {
    super.initState();
    changeOpacity();
    _controller = VideoPlayerController.asset("assets/video/ash_video.mp4")
      ..initialize().then((value) => {setState(() {})});
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  changeOpacity() {
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        changeOpacity();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size?.width ?? 0,
                height: _controller.value.size?.height ?? 0,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: opacity,
            duration: Duration(seconds: 3),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: getMarginTop(context)),
                child: Text(
                  'Revolutionising Luxury Living',
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontFamily: 'Montserrat',
                    fontSize: getTextSize(context),
                    fontWeight: FontWeight.w300, // Font weight
                  ),
                ),
              ),
            ),
          ),
          //FURTHER IMPLEMENTATION
        ],
      ),
    );
  }

  double getMarginTop(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.shortestSide < 600) {
      // This is a phone (iPhone or similar)
      return 230.0; // Adjust the margin for iPhones
    } else {
      // This is a tablet (iPad or similar)
      return 460.0; // Adjust the margin for iPads
    }
  }

  double getTextSize(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.shortestSide < 600) {
      // This is a phone (iPhone or similar)
      return 16; // Adjust the margin for iPhones
    } else {
      // This is a tablet (iPad or similar)
      return 22; // Adjust the margin for iPads
    }
  }
}
/*class _VideoPlayerScreenState extends State<Home> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  late Future<void> _initializeVideoPlayerFuture;
  double _aspectRatio = 9 / 16;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/onecanal_5sec.mp4");
    _chewieController = ChewieController(
      allowedScreenSleep: false,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      videoPlayerController: _controller,
      aspectRatio: _aspectRatio,
      autoPlay: true,
      looping: true,
      showControls: false,
    );
    _chewieController.addListener(() {
      if (_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });
*//*    _controller = VideoPlayerController.asset("assets/video/ash_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      looping: true,
      allowFullScreen: true,
      zoomAndPan: true,
      aspectRatio: _aspectRatio,
      showControls: false,
    );
    _chewieController.enterFullScreen();

    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }*//*
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
            child: VideoPlayer(_controller),
         *//* child: Chewie(
            controller: _chewieController,
          ),*//*
        ),
      ),
      *//*body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: VideoPlayer(_controller)),
        ],
      ),*//**//*FutureBuilder(
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
      ),*//*
    );
  }
}*/
