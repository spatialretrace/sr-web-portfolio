import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class ProjectSlide4 extends StatelessWidget {
  const ProjectSlide4({
    Key key,
    @required this.currentProject,
    @required this.slideWidth,
    @required this.slideHeight,
  }) : super(key: key);

  final Project currentProject;
  final double slideWidth;
  final double slideHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: slideHeight,
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
        width: slideWidth,
        margin: EdgeInsets.only(top: 30, right: 60, left: 60, bottom: 60),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(currentProject.slide4Image),
                fit: BoxFit.fitWidth),
          ),
        ),
      ),
    );
  }
}
