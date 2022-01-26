import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class FlutterText extends StatelessWidget {
  const FlutterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '<Flutter>',
      style: TextStyle(color: primaryColor),
    );
  }
}
