import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/coding_animation.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Padding(
          padding: EdgeInsets.only(
              top: defaultPadding / 8.5, bottom: defaultPadding),
          child: Text(
            'Coding',
            style: TextStyle(color: Colors.white),
          ),
        ),
        CodingAnimation(
          label: 'Dart',
          percent: 0.78,
        ),
        CodingAnimation(
          label: 'Java',
          percent: 0.5,
        ),
        CodingAnimation(
          label: 'HTML',
          percent: 0.95,
        ),
        CodingAnimation(
          label: 'CSS',
          percent: 0.73,
        ),
        CodingAnimation(
          label: 'C',
          percent: 0.59,
        ),
        SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
