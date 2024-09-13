import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final String image;

  const PersonCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          ),
        Text(name),
      ],
    );
  }
}