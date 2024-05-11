import 'package:chewie/chewie.dart';
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
  late ChewieController chewieController;

  Uri uri = Uri.parse('https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8');

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(uri);
    chewieController = ChewieController(videoPlayerController: _controller,
    aspectRatio: 16/9);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h,bottom: 10.h),
        child: Chewie(controller: chewieController),
      ),
    );
  }
}