import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants.dart';

class TextButon extends StatelessWidget {
  const TextButon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "DOWNLOAD CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg")
          ],
        ),
      ),
    );
  }
}
