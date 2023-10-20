import 'package:flutter/material.dart';
import 'package:people_of_palestine/core/utils/app_extensions.dart';

import 'projects_grid.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: 80, right: context.width * .03, left: context.width * .03),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsIntro(),
          SizedBox(height: 52),
          ProjectsGrid(),
        ],
      ),
    );
  }
}
