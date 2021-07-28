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
    final double briefFontSize = 22;
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'Drawing inspiration from ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Newari',
              style: TextStyle(
                color: accentTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ' vernacular architecture to reimagine a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'school in New Machhegaun',
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
                  ' township as part of the disaster rehabilitation initiatives since the ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'April 2015 earthquake in Nepal.',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
