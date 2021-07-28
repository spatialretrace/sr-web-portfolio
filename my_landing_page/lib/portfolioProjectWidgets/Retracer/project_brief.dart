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
                  'Developing a Unity3D hybrid design learning tool and e-studio, ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Retracer',
              style: TextStyle(
                color: accentTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ', as part of MDes thesis titled, "',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Retracing Spatial Design Processes',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: '", such that it helps track one\'s design processes and ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  'encourage more divergent, reflective and collaborative design thinking and making.',
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
