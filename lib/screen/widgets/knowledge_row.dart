import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants.dart';

class KnowledgeRow extends StatelessWidget {
  const KnowledgeRow({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/check.svg'),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
        ),
      ],
    );
  }
}
