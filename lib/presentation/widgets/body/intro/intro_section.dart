import 'package:flutter/material.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/Al-Aqsa3.jpg',
            height: context.height, width: context.width, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.height * .12),
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
