import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screen/appbar_screen.dart';
import 'package:my_portfolio/screen/body_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu));
              }),
            ),
      drawer: const AppbarScreen(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Responsive(
            mobile: const BodyScreen(),
            tablet: const BodyScreen(),
            desktop: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                  flex: 2,
                  child: AppbarScreen(),
                ),
                Expanded(
                  flex: 7,
                  child: BodyScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
