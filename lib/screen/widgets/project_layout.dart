import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/model/my_project.dart';
import 'package:my_portfolio/responsive.dart';

class ProjectLayout extends StatelessWidget {
  const ProjectLayout({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myProjects[index].title,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.subtitle2
                : Theme.of(context).textTheme.headline6,
          ),
          // const SizedBox(
          //   height: defaultPadding * 1.2,
          // ),
          const Spacer(),
          Text(
            myProjects[index].description,
            maxLines: 3,
            textAlign: TextAlign.start,
            style: Responsive.isDesktop(context)
                ? const TextStyle(overflow: TextOverflow.ellipsis, height: 1.5)
                : const TextStyle(
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                    height: 1.5,
                  ),
          ),
          const Spacer(),
          // const SizedBox(
          //   height: defaultPadding * 1.2,
          // ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
