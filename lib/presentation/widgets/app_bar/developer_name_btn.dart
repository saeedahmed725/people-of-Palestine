import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * 0.5
              : context.width * 0.3,
          child: Row(
            children: [
              Image.asset('assets/images/palestine_flag.png'),
              const SizedBox(width: 10),
              Text(
                AppStrings.titleName,
                style: AppStyles.s20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
