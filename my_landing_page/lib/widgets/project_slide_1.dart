import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/project_categories.dart';
import 'package:my_landing_page/widgets/project_name.dart';

class ProjectSlide1 extends StatelessWidget {
  const ProjectSlide1({
    Key key,
    @required this.currentProject,
    @required this.currentProjectName,
    @required this.slideWidth,
    @required this.slideHeight,
    @required this.projectBrief,
  }) : super(key: key);

  final Project currentProject;
  final List<String> currentProjectName;
  final double slideWidth;
  final double slideHeight;
  final Widget projectBrief;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: slideHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: currentProject.color1,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:
          //PROJECT SLIDER CONTENT
          Container(
        width: slideWidth,
        margin: EdgeInsets.only(
          top: 30,
          right: 60,
          left: 60,
          bottom: 60,
        ),
        child: Row(
          children: [
            //PROJECT PREVIEW IMAGE
            Container(
              width: 0.55 * slideWidth,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(currentProject.previewImage),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: 0.4 * slideWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 40,
                  // ),
                  //PROJECT NAME SECTION
                  ProjectName(
                    currentProjectName: currentProjectName,
                    widgetWidth: 0.4 * slideWidth,
                    widgetHeight: 0.3 * slideHeight,
                    lightTextColor: currentProject.color2,
                    midTextColor: currentProject.color3,
                    topFontSize: 42,
                    bottomFontSize: 76,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //PROJECT DESIGN CATEGORIES SECTION
                  ProjectCategories(
                    currentProject: currentProject,
                    widgetWidth: 0.4 * slideWidth,
                    widgetHeight: 0.1 * slideHeight,
                    categoryColor: currentProject.color5,
                    categoryAlign: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //PROJECT BRIEF SECTION
                  projectBrief,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
