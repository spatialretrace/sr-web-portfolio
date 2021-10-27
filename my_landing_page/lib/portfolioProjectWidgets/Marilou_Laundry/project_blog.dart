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
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 40, left: 60, right: 30),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'SPATIAL RETRACE BLOG NO. 1',
                      style: TextStyle(
                        color: currentProject.color2,
                        fontSize: 12,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '\n\nIllustrating a children\'s book in a pandemic freelance: Evolution of Marilu with Procreate and Trello',
                      style: TextStyle(
                        color: currentProject.color1,
                        fontSize: 26,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '\nFirdous Nizar / February 6, 2021',
                      style: TextStyle(
                        color: currentProject.color5,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nOne of many unexpected projects that I have been a part of, ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Marilu Does the Laundry',
                      style: TextStyle(
                        color: currentProject.color1,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' made me realixe that there are no limits to what you could achieve even when the circumstances are against it. I believe that illustrating a children\'s book is a must-have milestome for aspiring artists who want to spark creative storytelling in young minds. Being a PhD student who wanted to keep pursuing digital and traditional art amidst brain-number Zooms, this collaboration with ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'FolksnFables',
                      style: TextStyle(
                        color: currentProject.color5,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Sonia Collazo',
                      style: TextStyle(
                        color: currentProject.color5,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' came as a blessing in disguise!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
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
