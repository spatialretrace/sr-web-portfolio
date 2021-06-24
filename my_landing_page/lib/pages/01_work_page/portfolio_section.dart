import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/01_work_page/portfolio_project_gallery.dart';
// import 'package:my_landing_page/matrix_test.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        PortfolioGallery(),
      ],
    );
  }
}
