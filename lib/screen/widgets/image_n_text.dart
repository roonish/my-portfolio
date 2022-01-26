import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screen/widgets/animated_text.dart';
import 'package:my_portfolio/screen/widgets/flutter_text.dart';
import 'package:my_portfolio/screen/widgets/image_button.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: MediaQuery.of(context).size.width > 915 ? 3 : 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/nepal.jpg',
            fit: BoxFit.cover,
          ),
          // const Image(
          //   image: AssetImage('images/nepal.jpg'),
          //   fit: BoxFit.cover,
          // ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: !Responsive.isMobile(context)
                ? const EdgeInsets.all(defaultPadding)
                : const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover my Amazing \n Art Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  child: Row(
                    children: [
                      !Responsive.isMobile(context)
                          ? const FlutterText()
                          : Container(),
                      !Responsive.isMobile(context)
                          ? const SizedBox(width: defaultPadding / 2)
                          : const SizedBox(width: 0),
                      const Text('I build '),
                      const AnimateText(),
                      !Responsive.isMobile(context)
                          ? const SizedBox(width: defaultPadding / 2)
                          : const SizedBox(width: 0),
                      !Responsive.isMobile(context)
                          ? const FlutterText()
                          : Container(),
                    ],
                  ),
                ),
                !Responsive.isMobile(context)
                    ? const SizedBox(height: defaultPadding)
                    : const SizedBox(height: defaultPadding / 4),
                const ImageButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
