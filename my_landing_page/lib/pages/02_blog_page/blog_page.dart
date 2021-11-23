import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/widgets/blog_preview_tile.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
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
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return WideLayout();
      } else {
        return NarrowLayout();
      }
    });
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({Key key}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
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
              pageHeight: 1340, //SUBJECT TO CHANGE BASED ON GRID VIEW SIZES
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
                //PROJECT BLOG SECTION
                Text(
                  'PROJECT BLOGS',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 760,
                  height: 400,
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
                //DESIGN BOOK REVIEW BLOG SECTION
                Text(
                  'DESIGN BOOK REVIEWS',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 400,
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

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({Key key}) : super(key: key);

  @override
  _NarrowLayoutState createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
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
              pageHeight: 1340, //SUBJECT TO CHANGE BASED ON GRID VIEW SIZES
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
                //PROJECT BLOG SECTION
                Text(
                  'PROJECT BLOGS',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 760,
                  height: 400,
                  child: GridView.builder(
                    itemCount: projectsWithBlogs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: (640 / 360),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: BlogPreviewTile(
                          projectBlog: projectsWithBlogs[index],
                        ).reviewOnHover,
                      );
                    },
                  ),
                ),
                //DESIGN BOOK REVIEW BLOG SECTION
                Text(
                  'DESIGN BOOK REVIEWS',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 400,
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
