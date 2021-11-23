import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class NoBlogMessage extends StatelessWidget {
  const NoBlogMessage({
    Key key,
    @required this.currentProject,
    @required this.blogWidth,
  }) : super(key: key);

  final Project currentProject;
  final double blogWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      //blogHeight,
      width: blogWidth,
      margin: EdgeInsets.symmetric(horizontal: 100),
      // width: 1080,
      decoration: BoxDecoration(
        color: currentProject.color3,
      ),
      child: Text.rich(
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
      ),
    );
  }
}
