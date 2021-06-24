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
    return Expanded(
      flex: 4,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'Confronting buidling material textures and attention to detail in cultural spaces such as the ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: 22,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Sensoji Temple, Tokyo',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' through a wooden puzzle generated from a neutral AutoCAD drawing.',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: 22,
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
