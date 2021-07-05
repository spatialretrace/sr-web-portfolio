import 'package:flutter/material.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    Key key,
    @required this.widgetWidth,
    @required this.widgetHeight,
    @required this.darkTextColor,
    @required this.lightTextColor,
  }) : super(key: key);

  final double widgetWidth;
  final double widgetHeight;
  final Color darkTextColor;
  final Color lightTextColor;

  @override
  Widget build(BuildContext context) {
    final double detailFontSize = 20;
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'The interface of Retracer has been designed through the paradigms of ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'design accessibility and human-machine interaction',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' for students who would potentially use this application from their respective touch devices. \n\n\nThe user experience is designed to facilitate ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  'seamless collaboration in both virtual and physical spaces',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' that are either individual or collective in its ideation processes. Using the visual metaphor of a 3-dimensional room, this platform seeks to ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  'promote the methods of situated learning while constructively building on top of each other\'s ideas.',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
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
