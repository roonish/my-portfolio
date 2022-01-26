import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);
  final String title, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(name),
        ],
      ),
    );
  }
}
