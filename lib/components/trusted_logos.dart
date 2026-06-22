import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/constants/assets.dart';

import '../constants/app_colors.dart';
import 'empty_space.dart';

class TrustedLogos extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        width: 100.percent,
      ),
      [
        div(classes: 'trusted-text', [
          .text('Trusted by the UK\'s Leading Retailers'),
        ]),
        EmptySpace(height: 40),
        div(classes: 'logo-row', [
          img(src: PngAssets.asda, height: 60),
          img(src: PngAssets.aldi, height: 60),
          img(src: PngAssets.sainsburys, height: 60),
          img(src: PngAssets.lidl, height: 60),
          img(src: PngAssets.tesco, height: 60),
          img(src: PngAssets.morrisons, height: 60),
          img(src: PngAssets.mslondon, height: 60),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.trusted-text').styles(
      color: AppColors.darkBlue,
      textAlign: .center,
      fontSize: 18.px,
      fontWeight: .w500,
    ),
    css('.logo-row').styles(
      display: .flex,
      margin: .symmetric(horizontal: 80.px),
      justifyContent: .spaceBetween,
      alignItems: .center,
      alignSelf: .stretch,
    ),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.logo-row').styles(
        margin: .symmetric(horizontal: 20.px),
        flexWrap: .wrap,
        justifyContent: .center,
        gap: Gap.all(20.px),
      ),
      css('.logo-row img').styles(
        height: 40.px,
      ),
    ]),
  ];
}
