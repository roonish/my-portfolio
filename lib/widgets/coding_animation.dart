import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class CodingAnimation extends StatelessWidget {
  const CodingAnimation({Key? key, required this.percent, required this.label})
      : super(key: key);
  final double percent;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percent),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
              Text((value * 100).toInt().toString() + "%"),
            ],
          ),
          const SizedBox(
            height: defaultPadding / 1.5,
          ),
          LinearProgressIndicator(
            color: primaryColor,
            backgroundColor: darkColor,
            value: value,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
