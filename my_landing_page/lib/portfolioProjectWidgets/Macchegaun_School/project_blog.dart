import 'package:flutter/material.dart';

class ProjectBlog extends StatelessWidget {
  const ProjectBlog({
    Key key,
    @required this.projectBlogColor,
  }) : super(key: key);

  final Color projectBlogColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      margin: EdgeInsets.symmetric(horizontal: 100),
      // width: 1080,
      decoration: BoxDecoration(
        color: projectBlogColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Expanded(
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
