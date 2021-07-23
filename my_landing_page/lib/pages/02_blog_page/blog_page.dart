import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
import 'package:my_landing_page/widgets/nav_portfolio.dart';
import 'package:my_landing_page/widgets/web_BG.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    List<String> projectsWithBlogs = [];
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].hasBlog) projectsWithBlogs.add(projects[i].previewImage);
    }
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: 1000, //SUBJECT TO CHANGE BASED ON GRID VIEW SIZES
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //HEADER SECTION
                HeaderSection(),
                SizedBox(
                  height: 50,
                ),
                //BLOG GALLERY SECTION
                Container(
                  width: 760,
                  height: 500,
                  child: GridView.builder(
                    itemCount: projectsWithBlogs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return RawMaterialButton(
                        onPressed: () {
                          debugPrint('LET\'S CHECK OUT THE BLOG FOR ${projectsWithBlogs[index]}');
                          projectsWithBlogs[index]Navigator.pushNamed(context, )
                        },
                        child: Container(
                          width: 400,
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(projectsWithBlogs[index]),
                              fit: BoxFit.fitHeight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //FOOTER SECTION
                FooterSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
