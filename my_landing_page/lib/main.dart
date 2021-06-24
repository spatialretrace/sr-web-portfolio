import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/02_about_page/about_page.dart';
import 'package:my_landing_page/pages/01_work_page/work_page.dart';
import 'package:my_landing_page/pages/00_landing_page/landing_page.dart';
import 'package:my_landing_page/pages/03_contact_page/contact_page.dart';
import 'package:my_landing_page/portfolioProjectWidgets/CAD_Temple/cad_temple.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Library/hybrid_museum_library.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Macchegaun_School/m_school.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Marilou_Laundry/marilou_laundry.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Max_The_Spider/max_the_spider.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Moonception/moon_ception.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/my_vendor_van.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Retracer/retracer_e_studio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firdous Nizar\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/work': (context) => WorkPage(),
        '/work/cad-temple': (context) => CADTemple(),
        '/work/moonception': (context) => MoonCeption(),
        '/work/vendor-stall': (context) => MyVendorVan(),
        '/work/hybrid-museum': (context) => HybridMLibrary(),
        '/work/marilu-laundry': (context) => MarilouLaundry(),
        '/work/macchegaun-school': (context) => MSchool(),
        '/work/max-the-spider': (context) => MaxTheSpider(),
        '/work/retracer-e-studio': (context) => RetracerEStudio(),
        '/about': (context) => AboutPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
