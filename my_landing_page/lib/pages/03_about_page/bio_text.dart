import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BioText extends StatelessWidget {
  const BioText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bioTextSize = 17;
    String bioTextFontFamily = 'Futura';
    FontWeight bioTextFontWeight = FontWeight.w300;
    final ScrollController scrollController = ScrollController();
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.topLeft,
        height: 640,
        // color: Colors.white,
        child: RawScrollbar(
          controller: scrollController,
          thumbColor: Colors.amber,
          radius: Radius.circular(10),
          isAlwaysShown: true,
          interactive: true,
          thickness: 5,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(right: 10),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'Hi, I\'m ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'Firdous Nizar',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      ', designer, programmer, artist, blogger and writer with a background in architecture and urban design. ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      'Starting from proud scribbles on the walls of my parents\' apartment to enrolling for architecture to working with Web-based AR apps, my passion to translate a fleeting concept to a full-fledged narrative is what keeps me shifting and evolving my interdisciplinary skillset. I am well-known for gauging the extent of a problem and the emotions/likes/dislikes of my peers while also being brutally honest about all things good, moderate and bad about a project.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: bioTextFontWeight,
                  ),
                ),
                TextSpan(
                  text:
                      '\n\nI work with Front-end development tools (HTML/CSS/JS), Flutter API, Unity3D, Adobe Creative Cloud (Photoshop, Illustrator, InDesign, Premier), Figma, Procreate, AutoCAD, Revit, SketchUp, ink sketch, mood board, paper/clay maquette, and more. My design process typically involves using Trello and/or Miro boards to communicate with collaborators at several phases of a project.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: bioTextFontWeight,
                  ),
                ),
                TextSpan(
                  text: '\n\nUpcoming Projects:\n',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                WidgetSpan(
                  child: FaIcon(
                    FontAwesomeIcons.handPointRight,
                    size: 16,
                    color: Colors.amber.shade600,
                  ),
                ),
                TextSpan(
                  text: ' Reimagining world architecture through Venice',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      ': research-creation presentation for Accelerate Knowledge of the Past to Tomorrow - Delta Maja Studio x Venice Biennale (summer school), 2021.\n\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: bioTextFontWeight,
                  ),
                ),
                WidgetSpan(
                  child: FaIcon(
                    FontAwesomeIcons.handPointRight,
                    size: 16,
                    color: Colors.amber.shade600,
                  ),
                ),
                TextSpan(
                  text: ' WeAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      ': hybrid materiality through wearable AR on t-shirts with hand-made embroidery, 2021.\n\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: bioTextFontWeight,
                  ),
                ),
                WidgetSpan(
                  child: FaIcon(
                    FontAwesomeIcons.handPointRight,
                    size: 16,
                    color: Colors.amber.shade600,
                  ),
                ),
                TextSpan(
                  text: ' CAMMM Web Atlas 0.1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      ': web app to compare mobility in cities for CAMMM project at IDEAS-BE, 2021.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: bioTextSize,
                    fontFamily: bioTextFontFamily,
                    fontWeight: bioTextFontWeight,
                  ),
                ),
              ]),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
