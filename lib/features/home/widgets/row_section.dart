// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:anti_ui/theme/theme.dart';

class RowSection extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon1;
  final IconData icon2;
  const RowSection({
    Key? key,
    required this.text1,
    required this.text2,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 120,
          decoration: BoxDecoration(
              color: Pallete.whiteColor,
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            CircleAvatar(child: Icon(icon1)),
            Text(text1),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              color: Pallete.whiteColor,
              borderRadius: BorderRadius.circular(15)),
          height: 80,
          width: 120,
          child: Column(children: [
            CircleAvatar(child: Icon(icon2)),
            Text(text2),
          ]),
        )
      ],
    );
  }
}
