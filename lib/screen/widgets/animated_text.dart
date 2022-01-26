import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimateText extends StatelessWidget {
  const AnimateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText('responsive web and mobile app',
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText('chat app with firebase',
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText('responsive blood donation app',
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText('e-Commerce app UI',
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText('News portal app with API',
          speed: const Duration(milliseconds: 60)),
    ]);
  }
}
