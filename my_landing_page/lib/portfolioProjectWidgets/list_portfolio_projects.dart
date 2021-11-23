import 'package:flutter/material.dart';
import 'package:my_landing_page/portfolioProjectWidgets/CAD_Temple/cad_temple.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Hybrid_Museum/hybrid_museum.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Macchegaun_School/m_school.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Marilou_Laundry/marilou_laundry.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Max_The_Spider/max_the_spider.dart';
// import 'package:my_landing_page/portfolioProjectWidgets/Moonception/moon_ception.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Vendor_Van/my_vendor_van.dart';
import 'package:my_landing_page/portfolioProjectWidgets/Retracer/retracer_e_studio.dart';

final List<Project> projects = [
  Project(
    previewImage: 'assets/projectAssets/Retracer/preview_Retracer.png',
    hoverImage: 'assets/projectAssets/Retracer/hover_Retracer.png',
    slide2Image: 'assets/projectAssets/Retracer/hover_Retracer.png',
    slide3Image: 'assets/projectAssets/Retracer/hover_Retracer.png',
    slide4Image: 'assets/projectAssets/Retracer/hover_Retracer.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Hybrid Application',
      'Architecture',
      'Education',
      'MDes Thesis',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    hasBlog: false,
    blogName: '',
    blogReadTime: ' min read',
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
    previewImage:
        'assets/projectAssets/Max_The_Spider/preview_MaxTheSpider.png',
    hoverImage: 'assets/projectAssets/Max_The_Spider/hover_MaxTheSpider.png',
    slide2Image: 'assets/projectAssets/Max_The_Spider/hover_MaxTheSpider.png',
    slide3Image: 'assets/projectAssets/Max_The_Spider/hover_MaxTheSpider.png',
    slide4Image: 'assets/projectAssets/Max_The_Spider/hover_MaxTheSpider.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Illustration',
      'Surreal',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    projectName: 'SPIDER MAXIMILLIAN',
    hasBlog: false,
    blogName: '',
    blogReadTime: ' min read',
    blogWidget: MaxTheSpider(),
    projectRoute: '/max-the-spider',
    color1: Color(0xFF122C45),
    color2: Color(0xFFEB5902),
    color3: Color(0xFFAC2720),
    color4: Color(0xFF009FBE),
    color5: Color(0xFFFFFFFF),
  ),
  Project(
    previewImage: 'assets/projectAssets/Marilou/preview_Marilou.png',
    hoverImage: 'assets/projectAssets/Marilou/hover_Marilou.jpeg',
    slide2Image: 'assets/projectAssets/Marilou/hover_Marilou.jpeg',
    slide3Image: 'assets/projectAssets/Marilou/slide3.png',
    slide4Image: 'assets/projectAssets/Marilou/slide4.gif',
    imageCopyRight: 'FolksnFables',
    designCategory: [
      'Illustration',
      'Children\'s Book',
      'Freelance',
    ],
    year: 2021,
    place: 'Texas, USA',
    projectName: 'MISCHIEVOUS MARILU',
    hasBlog: true,
    blogName: 'Illustrating a children’s book in a pandemic freelance',
    blogReadTime: '2 min read',
    blogWidget: MarilouLaundry(),
    projectRoute: '/marilu-laundry',
    color1: Color(0xFFE6BA6B),
    color2: Color(0xFF4279D0),
    color3: Color(0xFF2E2E6D),
    color4: Color(0xFF371B03),
    color5: Color(0xFFE84F67),
  ),
  Project(
    previewImage: 'assets/projectAssets/Macchegaun_School/preview_MSchool.png',
    hoverImage: 'assets/projectAssets/Macchegaun_School/hover_MSchool.png',
    slide2Image: 'assets/projectAssets/Macchegaun_School/hover_MSchool.png',
    slide3Image: 'assets/projectAssets/Macchegaun_School/hover_MSchool.png',
    slide4Image: 'assets/projectAssets/Macchegaun_School/hover_MSchool.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Disaster Rehabilitation',
      'Vernacular Architecture',
      'School Design',
    ],
    year: 2020,
    place: 'Montreal, CANADA',
    projectName: 'MACHHEGAUN SCHOOL',
    hasBlog: false,
    blogName: '',
    blogReadTime: ' min read',
    blogWidget: MSchool(),
    projectRoute: '/macchegaun-school',
    color1: Color(0xFFD7E9ED),
    color2: Color(0xFFEFCA91),
    color3: Color(0xFFBC7C54),
    color4: Color(0xFF000000),
    color5: Color(0xFFD38C82),
  ),
  Project(
    previewImage: 'assets/projectAssets/CAD_Temple/preview_CADTemple.jpeg',
    hoverImage: 'assets/projectAssets/CAD_Temple/hover_CADTemple.jpeg',
    slide2Image: 'assets/projectAssets/CAD_Temple/CADTemple_Slide2.jpg',
    slide3Image: 'assets/projectAssets/CAD_Temple/hover_CADTemple.jpeg',
    slide4Image: 'assets/projectAssets/CAD_Temple/CADTemple_Slide4.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Puzzle Design',
      'Hybrid',
      'Architectural Illustration',
    ],
    year: 2019,
    place: 'Tokyo, JAPAN',
    hasBlog: false,
    blogName: 'Sacred physicality in AutoCAD?',
    blogReadTime: '3 min read',
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
    previewImage: 'assets/projectAssets/Hybrid_Museum/preview_HybridMuseum.png',
    hoverImage: 'assets/projectAssets/Hybrid_Museum/hover_HybridMuseum.png',
    slide2Image: 'assets/projectAssets/Hybrid_Museum/hover_HybridMuseum.png',
    slide3Image: 'assets/projectAssets/Hybrid_Museum/hover_HybridMuseum.png',
    slide4Image: 'assets/projectAssets/Hybrid_Museum/hover_HybridMuseum.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Architecture',
      'Hybrid',
      'Museum Design',
      'BArch Thesis',
    ],
    year: 2018,
    place: 'Abu Dhabi, UAE',
    projectName: 'HYBRID MUSEUM',
    hasBlog: false,
    blogName: '',
    blogReadTime: ' min read',
    blogWidget: HybridMuseum(),
    projectRoute: '/hybrid-museum',
    color1: Color(0xFFB5B7C3),
    color2: Color(0xFFE2CB99),
    color3: Color(0xFFF0B32D),
    color4: Color(0xFF7B5040),
    color5: Color(0xFFFFFFFF),
  ),
  // Project(projectName: 'WearAR'),
  Project(
    previewImage: 'assets/projectAssets/Vendor_Van/preview_VendorVan.png',
    hoverImage: 'assets/projectAssets/Vendor_Van/hover_VendorVan.png',
    slide2Image: 'assets/projectAssets/Vendor_Van/hover_VendorVan.png',
    slide3Image: 'assets/projectAssets/Vendor_Van/slide3.png',
    slide4Image: 'assets/projectAssets/Vendor_Van/slide4.png',
    imageCopyRight: 'Firdous Nizar',
    designCategory: [
      'Product Design',
      'Retail',
    ],
    year: 2016,
    place: 'Calicut, INDIA',
    projectName: 'VENDOR STALL',
    hasBlog: false,
    blogName: '',
    blogReadTime: ' min read',
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
  //   hasBlog: false,
  //   blogName: '',
  //   blogReadTime: ' min read',
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
  final String slide2Image;
  final String slide3Image;
  final String slide4Image;
  final String imageCopyRight;
  final List<String> designCategory;
  final int year;
  final String place;
  final bool hasBlog;
  final Widget blogWidget;
  final String blogName;
  final String blogReadTime;
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
    @required this.slide2Image,
    @required this.slide3Image,
    @required this.slide4Image,
    @required this.imageCopyRight,
    @required this.designCategory,
    @required this.year,
    @required this.place,
    @required this.hasBlog,
    @required this.blogName,
    @required this.blogReadTime,
    @required this.blogWidget,
    @required this.projectRoute,
    @required this.color1,
    @required this.color2,
    @required this.color3,
    @required this.color4,
    @required this.color5,
  });
}
