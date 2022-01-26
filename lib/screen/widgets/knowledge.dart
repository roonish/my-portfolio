import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screen/widgets/knowledge_row.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(
              top: defaultPadding / 8.5, bottom: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeRow(
          label: "Data Structures, Algorithms",
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const KnowledgeRow(
          label: "GIT Knowledge",
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const KnowledgeRow(
          label: "Networking",
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const KnowledgeRow(
          label: "Bootstrap",
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const KnowledgeRow(
          label: "OOP Knowledge",
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
