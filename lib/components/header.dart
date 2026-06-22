import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      div(classes: 'header-inner', [
        a(href: '/', [
          img(
            src: SvgAssets.logo,
            height: 40,
          ),
        ]),
        nav([
          a(href: '/', [.text('About')]),
          a(href: '/#howItWorks', [.text('How It Works')]),
          a(href: '/#pricing', [.text('Pricing')]),
        ]),
        a(classes: 'btn-get-started', href: '#', [
          .text('Get Started'),
          span(classes: 'arrow', [.text(' →')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: .flex,
        width: 100.percent,
        padding: .symmetric(horizontal: 120.px, vertical: 20.px),
        boxSizing: .borderBox,
        justifyContent: .center,
        alignItems: .center,
        color: AppColors.white,
      ),
      css('.header-inner').styles(
        display: .flex,
        width: 100.percent,
        flexDirection: .row,
        justifyContent: .spaceBetween,
        alignItems: .center,
      ),
      css('nav', [
        css('&').styles(
          display: .flex,
          gap: Gap.all(32.px),
        ),
        css('a', [
          css('&').styles(
            color: Color('#4A5568'),
            fontSize: 16.px,
            fontWeight: FontWeight.w500,
            textDecoration: .none,
          ),
          css('&:hover').styles(
            color: AppColors.darkBlue,
            fontWeight: FontWeight.bold,
          ),
        ]),
      ]),
      css('.btn-get-started', [
        css('&').styles(
          // borderRadius: 8.px,
          display: .flex,
          padding: .symmetric(horizontal: 24.px, vertical: 12.px),
          radius: BorderRadius.circular(8.px),
          alignItems: .center,
          gap: Gap.all(8.px),
          color: Color('#FFFFFF'),
          fontSize: 16.px,
          fontWeight: FontWeight.w500,
          textDecoration: .none,
          backgroundColor: Color('#1A73E8'),
        ),
        css('&:hover').styles(
          backgroundColor: Color('#1557B0'),
        ),
        css('.arrow').styles(
          fontSize: 20.px,
        ),
      ]),
    ]),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('header').styles(
        padding: .symmetric(horizontal: 20.px, vertical: 10.px),
      ),
      css('.header-inner').styles(
        flexDirection: .column,
        gap: Gap.all(16.px),
      ),
      css('nav').styles(
        gap: Gap.all(16.px),
      ),
      css('.btn-get-started').styles(
        width: 100.percent,
        justifyContent: .center,
      ),
    ]),
  ];
}
