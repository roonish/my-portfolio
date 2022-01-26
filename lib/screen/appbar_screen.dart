import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screen/widgets/coding.dart';
import 'package:my_portfolio/screen/widgets/contact_me.dart';
import 'package:my_portfolio/screen/widgets/cv_download.dart';
import 'package:my_portfolio/screen/widgets/knowledge.dart';
import 'package:my_portfolio/screen/widgets/location_detail.dart';
import 'package:my_portfolio/screen/widgets/my_Info.dart';
import 'package:my_portfolio/screen/widgets/skills.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LocationDetail(
                      title: 'Residence :',
                      name: 'Nepal',
                    ),
                    LocationDetail(
                      title: 'City :',
                      name: 'Kathmandu',
                    ),
                    LocationDetail(
                      title: 'Age :',
                      name: '23',
                    ),
                    Skill(),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    TextButon(),
                    ContactMe(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
