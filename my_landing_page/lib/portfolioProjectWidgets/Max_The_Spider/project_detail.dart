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
              text: 'Maximilian is designed as a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'cyber-arachnid',
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
                  ' character inspired by the rugged and spiky aesthetics of the movie, ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Mad Max',
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
                  '. This fusion features truck tires at the base of each metallic leg that is covered in a "million" spikes. \n\n\nDespite its appearance, Maximilian is an amicable spider that has wide eyes and and flashy lights on its body. The ',
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
                  'color palette of the character is an homage to retro arcade games and hues of a Martian desert where Maximilian lives.',
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
