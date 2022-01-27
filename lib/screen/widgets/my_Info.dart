import 'package:flutter/material.dart';

import '../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        color: secondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              const Spacer(
                flex: 4,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/profile.jpg',

                  // 'assets/images/pp.jpeg',
                ),
              ),
              const Spacer(),
              Text("Ronish Siwakoti",
                  style: Theme.of(context).textTheme.subtitle2),
              // TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //     letterSpacing: 2,
              //     height: 2.5),

              const Text(
                'Flutter Developer & Student of \n Bachelor of Information Management \n (BIM)',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
