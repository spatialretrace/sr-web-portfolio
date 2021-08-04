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
    final double detailFontSize = 22;
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'Set in a ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Puerto Rican household of 5 daughters and a mother',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ', this children\'s book is a heartwarming and playful story of the youngest child in the family who always tries to help in vain. The character\'s design calls for bright colors in her outfit with a flower in her thick and curly hair to ',
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
                  'capture her innocence and to make her stand out as the mischievous and pampered sibling.',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' The laundry room is illustrated with complementary colors and subtle textures in contrast with Marilu as she interacts with each object in the scene.',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
