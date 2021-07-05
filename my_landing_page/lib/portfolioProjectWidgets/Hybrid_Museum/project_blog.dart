import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';

class ProjectBlog extends StatelessWidget {
  const ProjectBlog({
    Key key,
    @required this.currentProject,
    @required this.blogWidth,
    @required this.blogHeight,
  }) : super(key: key);

  final Project currentProject;
  final double blogWidth;
  final double blogHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: blogHeight,
      width: blogWidth,
      decoration: BoxDecoration(
        color: currentProject.color3,
      ),
      child: Row(
        children: [
          Container(
            width: 0.5 * blogWidth,
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Container(
            width: 0.5 * blogWidth,
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
