import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/03_contact_page/contact_form.dart';
import 'package:my_landing_page/pages/03_contact_page/contact_message.dart';
import 'package:my_landing_page/widgets/back_home_button.dart';
import 'package:my_landing_page/widgets/curve_n_face.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/web_BG.dart';
import 'package:my_landing_page/widgets/web_nav.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    final double height = 1020;
    // MediaQuery.of(context).size.height;
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    // top: 50,
                    right: 50,
                    // bottom: 50,
                  ),
                  height: height,
                  child: Row(
                    children: [
                      //WEIRD CURVE AND FACE SECTION
                      CurveNFace(
                        widgetWidth: 400,
                      ),
                      //ABOUT CONTENT SECTION
                      Container(
                        width: 0.65 * width,
                        child: Container(
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              //NAV SECTION
                              WebNav(
                                navAlignment: MainAxisAlignment.center,
                                navTextColor: Colors.white,
                                navTextElevation: 3.0,
                                navSpacing: 80,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              //CONTACT MESSAGE SECTION
                              ContactMessage(
                                widgetHeight: 600,
                              ),
                              //CONTACT FORM SECTION
                              // ContactForm(
                              //   widgetHeight: 420,
                              // ),
                              //FOOTER SECTION
                              FooterSection(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 420,
                height: 420,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Firdous_Avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            BackHomeButton(),
          ],
        ),
      ),
    );
  }
}
