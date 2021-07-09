import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

List<String> projectTitle = [];

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

bool _hovering = false;

class _PortfolioProjectState extends State<PortfolioProject> {
  @override
  Widget build(BuildContext context) {
    final double currentWorkWidth = 1280;
    final double tileProjectDimension = (currentWorkWidth * 0.9) / 3;
    // final double currentWorkWidth = MediaQuery.of(context).size.width;
    // print(currentWorkWidth);
    // String projectImage = widget.previewImage;
    projectTitle.add(widget.projectName);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: _hovering
              ? Text(
                  widget.projectName,
                  style: TextStyle(
                    color: Colors.amber,
                    fontFamily: 'Futura',
                  ),
                )
              : Text(''),
        ),
        MouseRegion(
          onEnter: (e) => _mouseEnter(true),
          onExit: (e) => _mouseEnter(false),
          child: Material(
            color: Colors.transparent,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: _hovering
                      ? AssetImage(widget.hoverImage)
                      : AssetImage(widget.previewImage),
                  fit: BoxFit.cover,
                ),
              ),
              width: tileProjectDimension,
              height: tileProjectDimension,
            ).tileProjectOnHover,
          ),
        )
      ],
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}

class PortfolioGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // shrinkWrap: true,
        padding: EdgeInsets.only(top: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint(
                  'ROUTING TO PAGE OF PROJECT ${projects[index].projectName}!!!');
              Navigator.pushNamed(
                  context, "/work${projects[index].projectRoute}");
            },
            child: PortfolioProject(
              projectName: projects[index].projectName,
              previewImage: projects[index].previewImage,
              hoverImage: projects[index].hoverImage,
            ),
          );
        });
  }
}
