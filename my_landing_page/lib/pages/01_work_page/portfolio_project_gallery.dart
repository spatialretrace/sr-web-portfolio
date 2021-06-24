import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

List<String> projectTitle = [];
// bool hoverFlag = false;

class PortfolioProject extends StatefulWidget {
  const PortfolioProject({
    Key key,
    @required this.projectName,
    @required this.previewImage,
    @required this.hoverImage,
  }) : super(key: key);

  final String projectName;
  final String previewImage;
  final String hoverImage;

  @override
  _PortfolioProjectState createState() => _PortfolioProjectState();
}

class _PortfolioProjectState extends State<PortfolioProject> {
  @override
  Widget build(BuildContext context) {
    final double currentWorkWidth = MediaQuery.of(context).size.width;
    // print(currentWorkWidth);
    String projectImage = widget.previewImage;
    projectTitle.add(widget.projectName);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Stack(children: [
        Material(
          color: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white,
              image: DecorationImage(
                image: AssetImage(projectImage),
                fit: BoxFit.cover,
              ),
            ),
            // color: Colors.white,
            width: (currentWorkWidth * 0.8) / 3,
            height: (currentWorkWidth * 0.8) / 3,
            // child: tileProjectText(hoverFlag),
          ).tileProjectOnHover,
        ),
        // tileProjectText(hoverFlag),
        // ]),
        SizedBox(
          height: currentWorkWidth * 0.05,
        )
      ],
    );
  }
}

class PortfolioGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      children: [
        for (var project in projects)
          GestureDetector(
            onTap: () {
              debugPrint(
                  'ROUTING TO PAGE OF PROJECT ${project.projectName}!!!');
              Navigator.pushNamed(context, "/work${project.projectRoute}");
            },
            child: PortfolioProject(
              projectName: project.projectName,
              previewImage: project.previewImage,
              hoverImage: project.hoverImage,
            ),
          ),
      ],
    );
  }
}
