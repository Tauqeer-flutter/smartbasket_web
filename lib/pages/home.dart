import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/constants/app_colors.dart';
import 'package:smartbasket_web/constants/assets.dart';

class Home extends StatelessComponent {
  const Home();

  @override
  Component build(BuildContext context) {
    return div(classes: 'body', [
      div(classes: 'left', [
        div(classes: 'ai-powered', [
          img(src: SvgAssets.ai, classes: 'ai-image', width: 16, height: 16),
          .text(
            'AI-Powered Price Intelligence',
          ),
        ]),
        div(
          styles: Styles(
            margin: .only(top: 10.px, bottom: 12.px),
            color: AppColors.darkBlue,
            fontSize: 64.px,
            fontWeight: .normal,
            lineHeight: 140.percent,
          ),
          [.text('Your AI Shopping Assistant for Smarter Grocery Deals')],
        ),
        div(styles: Styles(
          fontSize: 16.px,
          fontWeight: FontWeight.normal,
          color: AppColors.textGray,
        ),[
              .text('Compare real-time inventory and prices across the UK\'s top retailers. Save time and money with AI-driven basket optimization.')
        ]),
      ]),
      div(classes: 'right', [
        img(
          src: PngAssets.homeAd,
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.body', [
      css('&').styles(
        display: .flex,
        width: 100.percent,
        boxSizing: .borderBox,
        flexDirection: .row,
      ),
    ]),
    css('.right').styles(
      width: 42.percent,
      padding: .only(top: 58.px, right: 120.px),
    ),
    css('.right img').styles(
      width: 100.percent,
      height: .auto,
    ),
    css('.left').styles(
      width: 58.percent,
      padding: .only(left: 120.px, top: 90.px, right: 24.px),
    ),
    css('.ai-powered').styles(
      maxWidth: .fitContent,
      padding: .symmetric(vertical: 8.px, horizontal: 16.px),
      border: .all(width: 1.px, color: AppColors.lightBlue1),
      radius: .circular(100.px),
    ),
    css('.ai-image').styles(padding: .only(right: 6.px)),
  ];
}
