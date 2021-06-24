import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Text/project_blog.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Text/project_brief.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Text/project_detail.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Slides/project_slide_1.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Slides/project_slide_2.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Slides/project_slide_3.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/Slides/project_slide_4.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/carousel_demo.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
import 'package:my_landing_page/widgets/nav_portfolio.dart';
import 'package:my_landing_page/widgets/web_BG.dart';

List<Widget> list = [];

class MyVendorVan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    Project currentProject;
    Widget projectBrief;
    Widget projectDetail;
    List<String> currentProjectName;
    for (var project in projects) {
      if (project.projectName == 'VENDOR STALL') {
        currentProject = project;
        projectBrief = ProjectBrief(
          darkTextColor: currentProject.color4,
          lightTextColor: currentProject.color2,
        );
        projectDetail = ProjectDetail(
          darkTextColor: currentProject.color5,
          lightTextColor: currentProject.color1,
        );
        debugPrint('${currentProject.projectName} HAS BEEN INITIALIZED!!!');
        currentProjectName = currentProject.projectName.split(' ');
      }
    }
    list = [
      ProjectSlide1(
        currentProject: currentProject,
        currentProjectName: currentProjectName,
        projectBrief: projectBrief,
      ),
      ProjectSlide2(
        currentProject: currentProject,
      ),
      ProjectSlide3(
        currentProject: currentProject,
        projectDetail: projectDetail,
      ),
      ProjectSlide4(
        currentProject: currentProject,
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
            Expanded(
              child: Column(
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
                    projectBlogColor: currentProject.color3,
                  ),
                ],
              ),
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
