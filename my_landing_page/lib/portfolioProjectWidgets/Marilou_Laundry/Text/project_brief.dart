import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectBrief extends StatelessWidget {
  const ProjectBrief({
    Key key,
    @required this.darkTextColor,
    @required this.lightTextColor,
    @required this.accentTextColor,
  }) : super(key: key);

  final Color darkTextColor;
  final Color lightTextColor;
  final Color accentTextColor;

  @override
  Widget build(BuildContext context) {
    final double briefFontSize = 20;
    return Expanded(
      flex: 4,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'Collaborating with ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'FolksnFables',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch('https://www.instagram.com/folksnfables/');
                },
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            WidgetSpan(
              child: FaIcon(
                FontAwesomeIcons.externalLinkAlt,
                size: 16,
                color: Colors.grey.shade600,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Sonia Strockyj',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: ' to bring the curious and playful Marilu to life in ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'Marilu Does the Laundry',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://www.amazon.ca/Marilu-Does-Laundry-Sonia-Strockyj/dp/B094T534TM/ref=sr_1_1?dchild=1&keywords=9798721897009&linkCode=qs&qid=1624465274&s=books&sr=1-1');
                },
              style: TextStyle(
                color: accentTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            WidgetSpan(
              child: FaIcon(
                FontAwesomeIcons.externalLinkAlt,
                size: 14,
                color: Colors.grey.shade600,
              ),
            ),
            TextSpan(
              text:
                  ' where she tries to relieve her hardworking mother of daily chores by doing the laundry, but ends up in a bubbling disaster.',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: briefFontSize,
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
