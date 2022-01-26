import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class SkillAnimation extends StatelessWidget {
  const SkillAnimation({Key? key, required this.percent, required this.label})
      : super(key: key);
  final double percent;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percent),
            duration: defaultDuration,
            builder: (context, double value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    color: primaryColor,
                    backgroundColor: darkColor,
                    value: value,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
