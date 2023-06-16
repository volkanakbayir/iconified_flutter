library iconified_flutter;

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Similarly to Material Icons, use [Iconify] Widget to display Iconify.
///
///
/// ```dart
/// import 'package:iconified_flutter/icons/IconsLibrary';
/// HeroIcon(IconsLibrary.arrowLeft)
/// ```

class Iconify extends StatelessWidget {
  final String icon;

  /// The default color applied to SVG elements that inherit the color property.
  /// See: https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#currentcolor_keyword
  final Color color;

  /// If specified, the size for the square to use for the SVG. If unspecified, the SVG will take the size of its parent.
  final double? size;

  /// The font size used when calculating em units of SVG elements.
  /// See: https://www.w3.org/TR/SVG11/coords.html#Units
  final double fontSize;

  /// The x-height (corpus size) of the font used when calculating ex units of SVG elements.
  /// Defaults to [fontSize] / 2 if not provided.
  /// See: https://www.w3.org/TR/SVG11/coords.html#Units, https://en.wikipedia.org/wiki/X-height
  final double? xHeight;

  const Iconify(
    this.icon, {
    Key? key,
    this.color = const Color(0xFF000000),
    this.size = 24,
    this.fontSize = 14,
    this.xHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      icon,
      theme: SvgTheme(
        currentColor: color,
        fontSize: fontSize,
        xHeight: xHeight,
      ),
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
