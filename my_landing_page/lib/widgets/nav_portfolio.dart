import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';
import 'package:my_landing_page/widgets/left_SR_button.dart';
import 'package:my_landing_page/widgets/right_SR_button.dart';

class NavPortfolio extends StatelessWidget {
  const NavPortfolio({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 20,
          height: 25,
          child: GestureDetector(
            child: CustomPaint(
              size: Size(18, 24),
              painter: LeftArrowButtonPainter(),
            ),
            onTap: () {
              debugPrint('GOING TO PREVIOUS PROJECT!!');
              // navController.previousPage();
            },
          ),
        ),
        WorkHome(),
        SizedBox(width: 5),
        Container(
          // alignment: Alignment.center,
          width: 270,
          height: 20,
          child:
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //
              Center(
            child: ListView.builder(
              itemCount: projects.length,
              itemExtent: 40,
              itemBuilder: (BuildContext context, int index) {
                return RawMaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  constraints: BoxConstraints(
                      minHeight: 4, minWidth: 4, maxHeight: 4, maxWidth: 4),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  onPressed: () {
                    debugPrint("TAKE ME TO ${projects[index].projectName}!");
                    Navigator.pushNamed(
                        context, '/work' + projects[index].projectRoute);
                  },
                  // padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ).navigatorOnHover;
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Container(
          width: 20,
          height: 25,
          child: GestureDetector(
            child: CustomPaint(
              size: Size(18, 24),
              painter: RightArrowButtonPainter(buttonColor: Colors.white),
            ),
            onTap: () {
              debugPrint('GOING TO PREVIOUS PROJECT!!');
              // navController.previousPage();
            },
          ),
        ),
        // ],
        // ),
      ],
    );
  }
}

class WorkHome extends StatefulWidget {
  const WorkHome({
    Key key,
  }) : super(key: key);

  @override
  _WorkHomeState createState() => _WorkHomeState();
}

bool _hovering = false;
Color homeHovered = Colors.amber;
Color homeColor = Colors.white;

class _WorkHomeState extends State<WorkHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: RawMaterialButton(
            child: FaIcon(
              FontAwesomeIcons.home,
              size: 18,
              color: _hovering ? homeHovered : homeColor,
            ),
            onPressed: () {
              debugPrint('TAKE ME BACK TO MAIN WORK PAGE!!!');
              Navigator.pushNamed(context, '/work');
            }),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
