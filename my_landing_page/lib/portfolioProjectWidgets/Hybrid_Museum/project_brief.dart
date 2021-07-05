import 'package:flutter/material.dart';

class ProjectBrief extends StatelessWidget {
  const ProjectBrief({
    Key key,
    @required this.widgetWidth,
    @required this.widgetHeight,
    @required this.darkTextColor,
    @required this.lightTextColor,
    @required this.accentTextColor,
  }) : super(key: key);

  final double widgetWidth;
  final double widgetHeight;
  final Color darkTextColor;
  final Color lightTextColor;
  final Color accentTextColor;

  @override
  Widget build(BuildContext context) {
    final double briefFontSize = 21;
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'Harmonizing technological innovation with traditional narratives by designing a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'hybrid museum',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ' in ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Saadiyat Island, Abu Dhabi, UAE',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' such that visitors can witness the history of UAE\'s rapid development while onboard a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'rollercoaster ride merged with the museum\'s envelope.',
              style: TextStyle(
                color: accentTextColor,
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
