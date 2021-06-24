import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class ProjectSlide3 extends StatelessWidget {
  const ProjectSlide3({
    Key key,
    @required this.currentProject,
    @required this.projectDetail,
  }) : super(key: key);

  final Project currentProject;
  final Widget projectDetail;

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
        color: currentProject.color2,
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
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    //PROJECT DETAIL SECTION
                    projectDetail,
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            //PROJECT DETAIL IMAGE
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('projectAssets/Vendor_Van/slide3.png'),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
