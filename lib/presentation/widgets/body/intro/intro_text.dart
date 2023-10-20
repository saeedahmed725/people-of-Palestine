import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200),
          Text(
            AppStrings.helloIM,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s16
                : AppStyles.s32.copyWith(color: AppColors.white),
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
          const SizedBox(height: 6),
          Text(
            AppStrings.titleName,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s24
                : AppStyles.s52,
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
          SizedBox(
            width: context.width < DeviceType.mobile.getMaxWidth()
                ? context.width - 20
                : context.width / 2.5,
            child: Text(
              AppStrings.introMsg,
              style: context.width < DeviceType.ipad.getMaxWidth()
                  ? AppStyles.s14
                  : AppStyles.s18,
              textAlign: _getTextAlign(context.width),
              softWrap: true,
            ),
          ),
          const SizedBox(height: 30),
          const IntoActions(),
        ],
      ),
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
