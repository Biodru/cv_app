import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String skill;
  final double advancedPercentage;
  const SkillWidget({
    @required this.skill,
    @required this.advancedPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(skill),
        SizedBox(
          width: MediaQuery.of(context).size.width / 15,
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: advancedPercentage,
          ),
        ),
      ],
    );
  }
}
