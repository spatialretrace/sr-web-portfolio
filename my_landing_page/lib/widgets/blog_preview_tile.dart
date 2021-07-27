import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/02_blog_page/blog_page.dart';

class BlogPreviewTile extends StatelessWidget {
  const BlogPreviewTile({
    Key key,
    @required this.projectBlog,
  }) : super(key: key);

  final BlogProject projectBlog;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        debugPrint('LET\'S CHECK OUT THE BLOG FOR ${projectBlog.projectName}');
        Navigator.pushNamed(context, projectBlog.blogURL);
      },
      child: Stack(children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 640,
              height: 120,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage(projectBlog.avatarImage),
                //   fit: BoxFit.fitHeight,
                // ),
                color: projectBlog.projectPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
            ),
            Container(
              width: 640,
              height: 60,
              decoration: BoxDecoration(
                color: projectBlog.projectSecondaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: Container(
            width: 86,
            height: 86,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(projectBlog.avatarImage),
                fit: BoxFit.fitHeight,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Container(
            width: 200,
            // height: 180,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: projectBlog.blogName,
                style: TextStyle(
                  color: projectBlog.projectTertiaryColor,
                  fontSize: 16,
                  fontFamily: 'Futura',
                ),
              ),
              TextSpan(
                text: '\n\n' + projectBlog.projectName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Futura',
                ),
              ),
              TextSpan(
                text: '\n' + projectBlog.blogReadTime,
                style: TextStyle(
                  color: projectBlog.projectTertiaryColor,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  // fontFamily: 'Futura',
                ),
              ),
            ])),
          ),
        ),
      ]),
    );
  }
}
