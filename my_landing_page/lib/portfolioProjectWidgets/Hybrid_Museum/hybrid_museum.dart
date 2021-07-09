import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Museum/project_blog.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Museum/project_brief.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Museum/project_detail.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/carousel_demo.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
import 'package:my_landing_page/widgets/nav_portfolio.dart';
import 'package:my_landing_page/widgets/project_slide_1.dart';
import 'package:my_landing_page/widgets/project_slide_2.dart';
import 'package:my_landing_page/widgets/project_slide_3.dart';
import 'package:my_landing_page/widgets/project_slide_4.dart';
import 'package:my_landing_page/widgets/web_BG.dart';

List<Widget> list = [];

class HybridMuseum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    final double slideWidth = 960;
    final double slideHeight = 760;
    Project currentProject;
    Widget projectBrief;
    Widget projectDetail;
    List<String> currentProjectName;
    for (var project in projects) {
      if (project.projectName == 'HYBRID MUSEUM') {
        currentProject = project;
        projectBrief = ProjectBrief(
          widgetHeight: 0.4 * slideHeight,
          widgetWidth: 0.4 * slideWidth,
          darkTextColor: currentProject.color4,
          lightTextColor: currentProject.color2,
          accentTextColor: currentProject.color5,
        );
        projectDetail = ProjectDetail(
          widgetHeight: 0.8 * slideHeight,
          widgetWidth: 0.4 * slideWidth,
          darkTextColor: currentProject.color4,
          lightTextColor: currentProject.color5,
        );
        debugPrint('${currentProject.projectName} HAS BEEN INITIALIZED!!!');
        currentProjectName = currentProject.projectName.split(' ');
      }
    }
    list = [
      ProjectSlide1(
        currentProject: currentProject,
        currentProjectName: currentProjectName,
        slideWidth: slideWidth,
        slideHeight: slideHeight,
        projectBrief: projectBrief,
      ),
      ProjectSlide2(
        currentProject: currentProject,
        slideWidth: slideWidth,
        slideHeight: slideHeight,
      ),
      ProjectSlide3(
        currentProject: currentProject,
        slideWidth: slideWidth,
        slideHeight: slideHeight,
        projectDetail: projectDetail,
      ),
      ProjectSlide4(
        currentProject: currentProject,
        slideWidth: slideWidth,
        slideHeight: slideHeight,
      ),
    ];
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: width * 1.25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //HEADER SECTION
                HeaderSection(),
                //PORTFOLIO PROJECT NAVIGATOR
                NavPortfolio(width: width),
                SizedBox(
                  height: 50,
                ),
                //PROJECT CAROUSEL SECTION
                Stack(alignment: AlignmentDirectional.center, children: [
                  CarouselDemo(widgetList: list),
                ]),
                //PROJECT BLOG SECTION
                ProjectBlog(
                  currentProject: currentProject,
                  blogHeight: 520,
                  blogWidth: 1080,
                ),
              ],
            ),
            //FOOTER SECTION
            Positioned(
                bottom: 60,
                width: width,
                child: Center(child: FooterSection())),
          ],
        ),
      ),
    );
  }
}