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
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            WebBG(
              homeBGback: homeBGback,
              homeBGfront: homeBGfront,
              pageHeight: width * 1.2635 + 620,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //HEADER SECTION
                  HeaderSection(),
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
            ),
          ],
        ),
      ),
    );
  }
}
