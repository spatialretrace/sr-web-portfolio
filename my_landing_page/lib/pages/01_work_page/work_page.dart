import 'package:flutter/material.dart';
import 'package:my_landing_page/widgets/footer_section.dart';
import 'package:my_landing_page/widgets/header_section.dart';
import 'package:my_landing_page/widgets/nav_portfolio.dart';
import 'package:my_landing_page/pages/01_work_page/portfolio_section.dart';
import 'package:my_landing_page/widgets/web_BG.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color homeBGback = Colors.amber;
    final Color homeBGfront = Colors.black;
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: 1920, //SUBJECT TO CHANGE BASED ON GRID VIEW SIZES
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //HEADER SECTION
                HeaderSection(
                  currentPage: 'WORK',
                ),
                //PORTFOLIO PROJECT NAVIGATOR
                NavPortfolio(width: width),
                SizedBox(
                  height: 50,
                ),
                //PORTFOLIO GALLERY SECTION
                PortfolioSection(width: width),
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
