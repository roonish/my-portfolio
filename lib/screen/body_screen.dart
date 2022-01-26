import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screen/widgets/image_n_text.dart';
import 'package:my_portfolio/screen/widgets/project_grid.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageAndText(),
          const SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: !Responsive.isDesktop(context)
                ? const EdgeInsets.only(left: defaultPadding)
                : const EdgeInsets.only(left: 0),
            child: Text(
              "My Projects",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          // const ProjectGrid(),
          const Responsive(
              mobile: ProjectGrid(
                crossCount: 1,
                aspectRatio: 2,
              ),
              tablet: ProjectGrid(
                crossCount: 2,
                aspectRatio: 1.3,
              ),
              desktop: ProjectGrid(
                crossCount: 3,
                aspectRatio: 1.3,
              ))
        ],
      ),
    );
  }
}
