import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class NoBlogMessage extends StatelessWidget {
  const NoBlogMessage({
    Key key,
    @required this.currentProject,
  }) : super(key: key);

  final Project currentProject;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        WidgetSpan(
          child: Icon(
            Icons.edit,
            size: 20,
            color: currentProject.color4,
          ),
        ),
        TextSpan(
          text: ' Watch this space for a BLOG about this project ',
          style: TextStyle(
            fontFamily: 'Futura',
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: currentProject.color4,
          ),
        ),
        WidgetSpan(
          child: Icon(
            Icons.edit,
            size: 20,
            color: currentProject.color4,
          ),
        ),
      ]),
      textAlign: TextAlign.center,
    );
  }
}
