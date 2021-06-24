import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/CAD_Temple/cad_temple.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Library/hybrid_museum_library.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Macchegaun_School/m_school.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Marilou_Laundry/marilou_laundry.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Max_The_Spider/max_the_spider.dart';
// import 'package:my_landing_page/portfolioProjectWidgets/Moonception/moon_ception.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/my_vendor_van.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Retracer/retracer_e_studio.dart';

final List<Project> projects = [
  Project(
    previewImage: 'projectAssets/Retracer/preview_Retracer.png',
    hoverImage: 'projectAssets/Retracer/hover_Retracer.png',
    designCategory: [
      'Hybrid Application',
      'Architecture',
      'Education',
      'MDes Thesis',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    projectName: 'RETRACER E-STUDIO',
    blogWidget: RetracerEStudio(),
    projectRoute: '/retracer-e-studio',
    color1: Color(0xFFB8B8B8),
    color2: Color(0xFF32B9B1),
    color3: Color(0xFF0D7B6D),
    color4: Color(0xFF000000),
    color5: Color(0xFFC45B2D),
  ),
  Project(
    previewImage: 'projectAssets/Max_The_Spider/preview_MaxTheSpider.png',
    hoverImage: 'projectAssets/Max_The_Spider/hover_MaxTheSpider.png',
    designCategory: [
      'Illustration',
      'Surreal',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    projectName: 'SPIDER MAXIMILLIAN',
    blogWidget: MaxTheSpider(),
    projectRoute: '/max-the-spider',
    color1: Color(0xFF122C45),
    color2: Color(0xFFEB5902),
    color3: Color(0xFFAC2720),
    color4: Color(0xFF009FBE),
    color5: Color(0xFFFFFFFF),
  ),
  Project(
    previewImage: 'projectAssets/Macchegaun_School/preview_MSchool.png',
    hoverImage: 'projectAssets/Macchegaun_School/hover_MSchool.png',
    designCategory: [
      'Disaster Rehabilitation',
      'Vernacular Architecture',
      'School Design',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    projectName: 'MACCHEGAUN SCHOOL',
    blogWidget: MSchool(),
    projectRoute: '/macchegaun-school',
    color1: Color(0xFFD7E9ED),
    color2: Color(0xFFEFCA91),
    color3: Color(0xFFBC7C54),
    color4: Color(0xFF000000),
    color5: Color(0xFFD38C82),
  ),
  Project(
    previewImage: 'projectAssets/Marilou/preview_Marilou.png',
    hoverImage: 'projectAssets/Marilou/hover_Marilou.jpeg',
    designCategory: [
      'Illustration',
      'Children\'s Book',
      'Freelance',
    ],
    year: 2021,
    place: 'Texas, USA',
    projectName: 'MISCHIEVOUS MARILU',
    blogWidget: MarilouLaundry(),
    projectRoute: '/marilu-laundry',
    color1: Color(0xFFE6BA6B),
    color2: Color(0xFF4279D0),
    color3: Color(0xFF2E2E6D),
    color4: Color(0xFF371B03),
    color5: Color(0xFFE84F67),
  ),
  Project(
    previewImage: 'projectAssets/CAD_Temple/preview_CADTemple.jpeg',
    hoverImage: 'projectAssets/CAD_Temple/hover_CADTemple.jpeg',
    designCategory: [
      'Puzzle Design',
      'Hybrid',
      'Architectural Illustration',
    ],
    year: 2019,
    place: 'Tokyo, JAPAN',
    projectName: 'CAD TEMPLE',
    blogWidget: CADTemple(),
    projectRoute: '/cad-temple',
    color1: Color(0xFFC5B8A7),
    color2: Color(0xFF8F521B),
    color3: Color(0xFF693406),
    color4: Color(0xFF371B03),
    color5: Color(0xFFFFFFFF),
  ),
  Project(
    previewImage: 'projectAssets/Hybrid_Library/preview_HybridLibrary.png',
    hoverImage: 'projectAssets/Hybrid_Library/hover_HybridLibrary.png',
    designCategory: [
      'Architecture',
      'Hybrid',
      'Museum Design',
      'BArch Thesis',
    ],
    year: 2018,
    place: 'Abu Dhabi, UAE',
    projectName: 'HYBRID MUSEUM',
    blogWidget: HybridMLibrary(),
    projectRoute: '/hybrid-museum',
    color1: Color(0xFFB5B7C3),
    color2: Color(0xFFE2CB99),
    color3: Color(0xFFF0B32D),
    color4: Color(0xFF7B5040),
    color5: Color(0xFFFFFFFF),
  ),
  // Project(projectName: 'WearAR'),
  Project(
    previewImage: 'projectAssets/Vendor_Van/preview_VendorVan.png',
    hoverImage: 'projectAssets/Vendor_Van/hover_VendorVan.png',
    designCategory: [
      'Product Design',
      'Retail',
    ],
    year: 2016,
    place: 'Calicut, INDIA',
    projectName: 'VENDOR STALL',
    blogWidget: MyVendorVan(),
    projectRoute: '/vendor-stall',
    color1: Color(0xFF0C89C2),
    color2: Color(0xFFE8805B),
    color3: Color(0xFFA33B41),
    color4: Color(0xFFFFFFFF),
    color5: Color(0xFF441909),
  ),
  // Project(
  //   previewImage: 'projectAssets/Moonception/preview_MoonCeption.png',
  //   hoverImage: 'projectAssets/Moonception/hover_MoonCeption.jpeg',
  //   designCategory: ['Architecture', 'Conceptual'],
  //   year: 2019,
  //   place: 'Montreal, CANADA',
  //   projectName: 'TOWARD MOONCEPTION',
  //   blogWidget: MoonCeption(),
  //   projectRoute: '/moonception',
  //   color1: Color(0xFFB2BAA3),
  //   color2: Color(0xFFCC8102),
  //   color3: Color(0xFF774000),
  //   color4: Color(0xFF000000),
  //   color5: Color(0xFF078C8A),
  // ),
  // Project(projectName: 'DrawingMatters'),
];

class Project {
  final String projectName;
  final String previewImage;
  final String hoverImage;
  final List<String> designCategory;
  final int year;
  final String place;
  final Widget blogWidget;
  final String projectRoute;
  final Color color1; //BG Color
  final Color color2; //Light Color
  final Color color3; //Mid Color
  final Color color4; // Brief Color
  final Color color5; // DesCat Color

  Project({
    @required this.projectName,
    @required this.previewImage,
    @required this.hoverImage,
    @required this.designCategory,
    @required this.year,
    @required this.place,
    @required this.blogWidget,
    @required this.projectRoute,
    @required this.color1,
    @required this.color2,
    @required this.color3,
    @required this.color4,
    @required this.color5,
  });
}
