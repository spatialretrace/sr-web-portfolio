import 'package:flutter/material.dart';

class ProjectName extends StatelessWidget {
  const ProjectName({
    Key key,
    @required this.currentProjectName,
    @required this.widgetWidth,
    @required this.widgetHeight,
    @required this.lightTextColor,
    @required this.midTextColor,
    @required this.topFontSize,
    @required this.bottomFontSize,
  }) : super(key: key);

  final List<String> currentProjectName;
  final double widgetWidth;
  final double widgetHeight;
  final Color lightTextColor;
  final Color midTextColor;
  final double topFontSize;
  final double bottomFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight,
      width: widgetWidth,
      child: Container(
        // Check and display project name
        alignment: Alignment.bottomLeft,
        child: currentProjectName.length >= 2
            ? Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: currentProjectName[0] + '\n',
                    style: TextStyle(
                      color: lightTextColor,
                      fontFamily: 'Futura',
                      fontSize: topFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: currentProjectName[1],
                    style: TextStyle(
                      color: midTextColor,
                      fontFamily: 'Futura',
                      fontSize: bottomFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              )
            : Text(
                currentProjectName[0],
                style: TextStyle(
                  color: lightTextColor,
                  fontFamily: 'Futura',
                  fontSize: topFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
