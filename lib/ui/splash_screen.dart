import 'package:flutter/material.dart';
import 'package:soccer_live_score/ui/home_screen.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset('assets/animation_lmju9har.mp4')..initialize().then((_){
      setState(() {

      });
    });
    _playVideo();
  }
  void _playVideo() async{
    _controller.play();
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return HomeScreen();
    }));
  }

  @override
  void dispose(){

    _controller.dispose();
    super.dispose();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized ?
        AspectRatio(aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(
            _controller
        ),
        ):Container(),
      ),

    );
  }
}
