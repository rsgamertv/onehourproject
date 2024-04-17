import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:video_player/video_player.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late VideoPlayerController _controller;
  Uri uri = Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(uri)..initialize().then((value) {
      _controller.play();
      setState(() {});
    }); }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 30.h,bottom: 30.h),
        child: VideoPlayer(_controller),
      ),

    );
  }
}