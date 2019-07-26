import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/**
 * 视频播放器
 */
class VideoPlayPage extends StatefulWidget {
  final String url;

  VideoPlayPage({Key key, @required this.url}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _VideoPlayPageState();
  }
}

class _VideoPlayPageState extends State<VideoPlayPage> {
  ChewieController chewieController;
  VideoPlayerController videoPlayerController;

  // onCreate
  @override
  void initState() {
    // 播放器初始化一定要放到initState中，防止重复初始化
    videoPlayerController = VideoPlayerController.network(widget.url);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
      allowFullScreen: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return new Center(
      child: new Chewie(
        controller: chewieController,
      ),
    );
  }

  // onDestory()
  @override
  void dispose() {
    if (chewieController != null) {
      chewieController.dispose();
    }

    if (videoPlayerController != null) {
      videoPlayerController.dispose();
    }
    super.dispose();
  }
}
