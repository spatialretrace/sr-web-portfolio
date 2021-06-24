import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class ProjectSlide4 extends StatelessWidget {
  const ProjectSlide4({
    Key key,
    @required this.currentProject,
  }) : super(key: key);

  final Project currentProject;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      // width: 960,
      margin: EdgeInsets.only(
        top: 20,
        right: 60,
        left: 60,
      ),
      decoration: BoxDecoration(
        color: currentProject.color5,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:
          //PROJECT SLIDER CONTENT
          Container(
        width: 960,
        margin: EdgeInsets.only(top: 30, right: 60, left: 60, bottom: 60),
        child: Expanded(
          // flex: 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                      'projectAssets/CAD_Temple/CADTemple_Slide4.png'),
                  fit: BoxFit.fitWidth),
            ),
          ),
        ),
      ),
    );
  }
}
