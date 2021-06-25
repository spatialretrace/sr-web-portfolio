import 'package:flutter/material.dart';
import 'package:my_landing_page/extensions/review_hover.dart';
import 'dart:html' as html;
import 'package:my_landing_page/extensions/tile_project_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, // the widget we're using the extension on
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get tileProjectOnHover {
    return TileProjectHover(
      child: this,
    );
  }

  Widget get reviewOnHover {
    return ReviewHover(
      child: this,
    );
  }
}
