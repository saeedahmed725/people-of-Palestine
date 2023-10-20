import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/intro.mp4')
      ..initialize().then((_) => setState(() {
            _controller.play();
            _controller.setLooping(true);
          }));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: context.height * .12, horizontal: context.width * .03),
          child: context.width < DeviceType.mobile.getMaxWidth()
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntroCircleImageBox(),
                    SizedBox(height: 50),
                    IntroText(),
                  ],
                )
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IntroText(),
                    IntroCircleImageBox(),
                  ],
                ),
        ),
      ],
    );
  }
}
