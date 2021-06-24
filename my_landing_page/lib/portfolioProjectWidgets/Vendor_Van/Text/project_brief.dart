import 'package:flutter/material.dart';

class ProjectBrief extends StatelessWidget {
  const ProjectBrief({
    Key key,
    @required this.darkTextColor,
    @required this.lightTextColor,
  }) : super(key: key);

  final Color darkTextColor;
  final Color lightTextColor;

  @override
  Widget build(BuildContext context) {
    final double briefFontSize = 20;
    return Expanded(
      flex: 4,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'Addressing the challenge of saving space and being self-sufficient in a limited footprint through a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'vending stall design',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' for food sales during the day and repose during the night in ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Kozhikode (Calicut) Beach, India.',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
