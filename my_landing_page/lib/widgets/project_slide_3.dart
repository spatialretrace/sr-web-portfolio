import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class ProjectSlide3 extends StatelessWidget {
  const ProjectSlide3({
    Key key,
    @required this.currentProject,
    @required this.slideWidth,
    @required this.slideHeight,
    @required this.projectDetail,
  }) : super(key: key);

  final Project currentProject;
  final double slideWidth;
  final double slideHeight;
  final Widget projectDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: slideHeight,
      margin: EdgeInsets.only(
        top: 20,
        right: 60,
        left: 60,
      ),
      decoration: BoxDecoration(
        color: currentProject.color3,
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
        child: Row(
          children: [
            Container(
              width: 0.4 * slideWidth,
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
            Container(
              width: 0.55 * slideWidth,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(currentProject.slide3Image),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text(
                    '\u00a9 ${currentProject.imageCopyRight}, 2021',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
