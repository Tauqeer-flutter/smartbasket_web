import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/components/feature_grid.dart';
import 'package:smartbasket_web/components/pricing.dart';

import '../components/chip.dart';
import '../components/footer.dart';
import '../components/how_it_works.dart';
import '../components/stats_row.dart';
import '../components/trusted_logos.dart';
import '../constants/app_colors.dart';
import '../constants/assets.dart';
import '../components/empty_space.dart';

class Home extends StatelessComponent {
  const Home();

  @override
  Component build(BuildContext context) {
    return div([
      div(classes: 'body', [
        _buildLeftSide(),
        EmptySpace(width: 24),
        div(classes: 'right', [
          img(
            src: PngAssets.homeAd,
          ),
        ]),
      ]),
      EmptySpace(height: 123),
      TrustedLogos(),
      EmptySpace(height: 110),
      div(
        styles: Styles(
          display: .flex,
          flexDirection: .column,
          justifyContent: .center,
          alignItems: .center,
        ),
        [
          Chip(label: 'Regional Intelligence', filled: true),
          EmptySpace(height: 24),
          h1(
            [
              .text('Hyper-Local Data at'),
            ],
          ),
          h1([
            .text('Your Fingertips'),
          ]),
          EmptySpace(height: 18),
          h2([.text('We track inventory across 15,000+ UK postcodes every hour. Know exactly where')]),
          h2([.text('your favorite organic almond milk is in stock before you leave the house.')]),
        ],
      ),
      EmptySpace(height: 56),
      FeatureGrid(),
      EmptySpace(height: 100),
      Pricing(),
      EmptySpace(height: 80),
      HowItWorks(),
    ]);
  }

  div _buildLeftSide() {
    return div(classes: 'left', [
      Chip(
        label: 'AI-Powered Price Intelligence',
        image: SvgAssets.ai,
      ),
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
      div(
        styles: Styles(
          color: AppColors.textGray,
          fontSize: 16.px,
          fontWeight: FontWeight.normal,
        ),
        [
          .text(
            'Compare real-time inventory and prices across the UK\'s top retailers. Save time and money with AI-driven basket optimization.',
          ),
        ],
      ),
      hr(
        styles: Styles(
          width: 100.percent,
          margin: .only(top: 34.px, bottom: 54.px),
          border: .only(
            top: BorderSide(color: AppColors.borderGrey, width: 1.px),
          ),
        ),
      ),
      StatsRow(),
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
      padding: .only(left: 120.px, top: 90.px),
    ),
    css('h1').styles(
      fontSize: 52.px,
      fontWeight: .w400,
      lineHeight: 124.percent,
    ),
    css('h2').styles(
      color: AppColors.textGray,
      fontSize: 18.px,
      fontWeight: .w400,
      lineHeight: 0.percent,
    ),
  ];
}
