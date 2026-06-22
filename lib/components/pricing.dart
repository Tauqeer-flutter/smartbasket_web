import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/components/chip.dart';
import 'package:smartbasket_web/components/empty_space.dart';
import 'package:smartbasket_web/constants/app_colors.dart';
import 'package:smartbasket_web/constants/assets.dart';

class Pricing extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(id: 'pricing', classes: 'pricing', [
      div(
        classes: 'pricing-body',
        [
          EmptySpace(height: 80),
          Chip(label: 'Premium Subscription', textColor: AppColors.white),
          EmptySpace(height: 14),
          h1(
            classes: 'pricing-title',
            [.text('Deep Price Analytics')],
          ),
          EmptySpace(height: 14),
          h1(
            classes: 'pricing-subtitle',
            [
              .text(
                'Transparent data that shows you exactly where the margins are. No more guessing which shop is cheaper for your specific list.',
              ),
            ],
          ),
          img(
            classes: 'pricing-image',
            src: PngAssets.pricingAnalytics,
          ),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.pricing').styles(
      width: 100.percent,
      height: 100.vh,
      backgroundColor: AppColors.blue,
    ),
    css('.pricing-body').styles(
      display: .flex,
      height: 100.percent,
      padding: .only(left: 100.px, right: 100.px),
      flexDirection: .column,
      alignItems: .center,
    ),
    css('.pricing-title').styles(
      color: AppColors.white,
      fontSize: 52.px,
      fontWeight: .w400,
      lineHeight: 124.percent,
    ),
    css('.pricing-subtitle').styles(
      color: AppColors.white.withOpacity(0.7),
      fontSize: 18.px,
      fontWeight: .w400,
      lineHeight: 170.percent,
      textAlign: .center,
    ),
    css('.pricing-image').styles(
      width: 70.percent,
      margin: .only(top: .auto),
    ),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.pricing').styles(
        height: .auto,
        padding: .only(bottom: 40.px),
      ),
      css('.pricing-body').styles(
        padding: .symmetric(horizontal: 20.px),
      ),
      css('.pricing-title').styles(
        fontSize: 32.px,
        textAlign: .center,
      ),
      css('.pricing-subtitle').styles(
        fontSize: 16.px,
        textAlign: .center,
      ),
      css('.pricing-image').styles(
        width: 100.percent,
      ),
    ]),
  ];
}
