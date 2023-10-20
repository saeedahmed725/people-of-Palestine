import 'package:flutter/material.dart';
import 'package:people_of_palestine/core/utils/app_extensions.dart';


import '../../../../core/utils/app_enums.dart';
import 'contact_form.dart';
import 'contact_intro.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: 80, right: context.width * .03, left: context.width * .03),
      child: context.width > DeviceType.ipad.getMaxWidth()
          ? const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContactIntro(),
                ),
                SizedBox(width: 32),
                Expanded(child: ContactForm()),
              ],
            )
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContactIntro(),
                SizedBox(height: 32),
                ContactForm(),
              ],
            ),
    );
  }
}
