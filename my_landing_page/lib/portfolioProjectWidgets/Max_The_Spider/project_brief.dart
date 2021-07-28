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
              text: 'Capturing the daunting presence of a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'gigantic spider',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ' by transforming its body into a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Mad Max machina',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ' in the dystopian illustration, ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Max The Spider',
              style: TextStyle(
                color: accentTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ', submitted for Winter 2021 call for artists at ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Collective Arts Brewery, Hamilton, Ontario.',
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
