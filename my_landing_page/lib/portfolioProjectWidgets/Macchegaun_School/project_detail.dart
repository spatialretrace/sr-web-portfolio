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
    final double detailFontSize = 18;
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'According to Roger Anger, architect and visionary of Auroville Schools, India, "',
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
                  'Education of a child should take place amidst life and not be confined to school. It must be open to the outside world.',
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
                  '" Based on Anger\'s insight on rural education, the envelope of the Machhegaun School is envisioned for free progress through openness, encouraging young minds to explore through outdoor activities and play. \n\n\nUsing locally available materials, the school\'s structure is kept light, inviting and grounded, while respecting Newari symmetry of its elements and spaces. ',
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
                  'The floor plan of the school is designed to be built in 3 phases that help the townsfolk transition from the disaster to everyday teaching and learning activities.',
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
