import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/03_contact_page/contact_form.dart';
import 'package:my_landing_page/pages/03_contact_page/contact_message.dart';
import 'package:my_landing_page/pages/03_contact_page/curve_n_face.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/web_BG.dart';
import 'package:my_landing_page/widgets/web_nav.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: height * 1.5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      // top: 50,
                      right: 50,
                      // bottom: 50,
                    ),
                    height: height * 1.5,
                    child: Row(
                      children: [
                        //WEIRD CURVE AND FACE SECTION
                        CurveNFace(
                          widgetFlex: 2,
                        ),
                        //ABOUT CONTENT SECTION
                        Expanded(
                          flex: 5,
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
                                ContactMessage(),
                                //CONTACT FORM SECTION
                                ContactForm(),
                                //FOOTER SECTION
                                FooterSection(),
                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
          ],
        ),
      ),
    );
  }
}
