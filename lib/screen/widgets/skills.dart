import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/skill_animation.dart';

import '../../constants.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(
              top: defaultPadding / 8.5, bottom: defaultPadding),
          child: Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: SkillAnimation(
                label: 'Flutter',
                percent: 0.89,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: SkillAnimation(
                label: 'MySql',
                percent: 0.78,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
                child: SkillAnimation(
              label: 'Firebase',
              percent: 0.65,
            )),
          ],
        ),
        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
