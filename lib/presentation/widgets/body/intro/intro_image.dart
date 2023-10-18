import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );

    return Positioned(
      right: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1000),
        child: Image.asset(
          'assets/images/Al-Aqsa2.jpg',
          fit: BoxFit.cover,
          width: responsiveSize.getSize(),
          height: responsiveSize.getSize(),
        ),
      ),
    );
  }
}
