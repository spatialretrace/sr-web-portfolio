import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/blog_preview_tile.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
// import 'package:my_landing_page/widgets/nav_portfolio.dart';
import 'package:my_landing_page/widgets/web_BG.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

class BlogProject {
  String projectName;
  String avatarImage;
  String blogURL;
  String blogName;
  String blogReadTime;
  Color projectPrimaryColor;
  Color projectSecondaryColor;
  Color projectTertiaryColor;

  BlogProject({
    @required this.projectName,
    @required this.avatarImage,
    @required this.blogURL,
    @required this.blogName,
    @required this.blogReadTime,
    @required this.projectPrimaryColor,
    @required this.projectSecondaryColor,
    @required this.projectTertiaryColor,
  });
}

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    List<BlogProject> projectsWithBlogs = [];
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].hasBlog) {
        BlogProject tempProject = BlogProject(
          projectName: projects[i].projectName,
          avatarImage: projects[i].previewImage,
          blogURL: '/work' +
              projects[i]
                  .projectRoute, //NEED TO ADD SPECIFIC SECTION NAVIGATION
          blogName: projects[i].blogName,
          blogReadTime: projects[i].blogReadTime,
          projectPrimaryColor: projects[i].color2,
          projectSecondaryColor: projects[i].color3,
          projectTertiaryColor: projects[i].color1,
        );
        projectsWithBlogs.add(tempProject);
      }
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
                HeaderSection(
                  currentPage: 'BLOG',
                ),
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
                      crossAxisCount: 2,
                      childAspectRatio: (640 / 360),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return BlogPreviewTile(
                        projectBlog: projectsWithBlogs[index],
                      ).reviewOnHover;
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
