import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/assets.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      div(classes: 'header-inner', [
        img(src: SvgAssets.logo, height: 40),
        nav([
          a(href: '/about', [.text('About')]),
          a(href: '/how-it-works', [.text('How It Works')]),
          a(href: '/pricing', [.text('Pricing')]),
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
        color: Color('#FFFFFF'),
      ),
      css('.header-inner').styles(
        display: .flex,
        width: 100.percent,
        maxWidth: 1200.px,
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
            color: Color('#FFFFFF'),
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
  ];
}
