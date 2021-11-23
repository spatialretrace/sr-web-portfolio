import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/list_portfolio_projects.dart';
import 'package:url_launcher/url_launcher.dart';

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
    double screenshotWidth = 220;
    double screenshotHeight = 180;
    double screenshotMargin = 15;
    return Container(
      height: blogHeight,
      width: blogWidth,
      decoration: BoxDecoration(
        color: currentProject.color3,
      ),
      child: Column(
        children: [
          Row(
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
                          text:
                              '\n\nIllustrating a children\'s book in a pandemic freelance: Evolution of Marilu with Procreate and Trello',
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
                          text:
                              '\n\n\nOne of many unexpected projects that I have been a part of, ',
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
                          text:
                              ' made me realixe that there are no limits to what you could achieve even when the circumstances are against it. I believe that illustrating a children\'s book is a must-have milestome for aspiring artists who want to spark creative storytelling in young minds. Being a PhD student who wanted to keep pursuing digital and traditional art amidst brain-number Zooms, this collaboration with ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'FolksnFables',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch('https://www.instagram.com/folksnfables/');
                            },
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
                        TextSpan(
                          text:
                              '\n\nThis opportunity has certainly reinforced my belief that it is very essential to stay connected with people who inspire you to keep growing. ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Neethi Joseph,',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://www.linkedin.com/in/neethi-joseph-25333a168/');
                            },
                          style: TextStyle(
                            color: currentProject.color2,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ' Indu Shaji,',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://www.linkedin.com/in/indu-shaji-018638157/');
                            },
                          style: TextStyle(
                            color: currentProject.color2,
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
                          text: ' Naeema Ali ',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://www.linkedin.com/in/naeema-ali-157013122/');
                            },
                          style: TextStyle(
                            color: currentProject.color2,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' approached me for this project, not just as co-founders of FolksnFables, but also as my own architecture seniors from my alma mater, NITC. Proof that, despite the pandemic, social media continues to work its magic as a powerful tool that unites and empowers the community of women BIPOC designers, no matter where we are.',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 0.5 * blogWidth,
                    height: 600,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 30, right: 30, left: 30, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/projectAssets/Marilou/blog_marilu.png"),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Snapshot of Trello board for Marilou Does the Laundry, 2021',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        color: currentProject.color1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenshotWidth,
                      height: screenshotHeight,
                      margin: EdgeInsets.all(screenshotMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/projectAssets/Marilou/blog_marilu2.png"),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Container(
                      width: screenshotWidth,
                      height: screenshotHeight,
                      margin: EdgeInsets.all(screenshotMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/projectAssets/Marilou/blog_marilu3.png"),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Container(
                      width: screenshotWidth,
                      height: screenshotHeight,
                      margin: EdgeInsets.all(screenshotMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/projectAssets/Marilou/blog_marilu4.jpeg"),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Container(
                      width: screenshotWidth,
                      height: screenshotHeight,
                      margin: EdgeInsets.all(screenshotMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/projectAssets/Marilou/blog_marilu5.png"),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Evolution of Marilou and her sisters for Marilou Does the Laundry, 2021',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: currentProject.color1,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 60, right: 30),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        '\n\nI can attest to the fact that I have never felt so motivated to bring a character to life than when I first heard the story of the cute, endearing, 5yo Marilu. She is not inhibited by her tiny hands in \'moving mountains\' for her family. To do justice to this narrative, my discussions with the FolksnFables team were nothing short of cooperative, flexible yet realistic brainstorming sessions. Creative tools such as Procreate and Adobe InDesign along with essential project management platforms like Trello helped navigate the complexities of coordinating this remote collaboration. Each iteration, from the most earnest sketches to the final productions, brought constant affirmation to the process of illustrationg a book, putting together an educational experience for playful children like Marilu. Here\'s to passing on the joy I felt when drawing Marilu: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text:
                        'grab a copy of Marilu Does the Laundry on Amazon (US).',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch(
                            'https://www.amazon.ca/Marilu-Does-Laundry-Sonia-Strockyj/dp/B094T534TM');
                      },
                    style: TextStyle(
                      color: currentProject.color5,
                      fontSize: 16,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
