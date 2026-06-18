import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/app_colors.dart';
import 'chip.dart';
import 'empty_space.dart';

class HowItWorks extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(classes: 'how-it-works', [
      Chip(label: 'Live Price Comparison'),
      EmptySpace(height: 14),
      h1(
        styles: Styles(
          color: AppColors.white,
          fontSize: 52.px,
          fontWeight: .w400,
          lineHeight: 124.percent,
        ),
        [.text('How It Works')],
      ),
      EmptySpace(height: 14),
      h1(
        styles: Styles(
          color: AppColors.white.withOpacity(0.7),
          fontSize: 18.px,
          fontWeight: .w400,
          lineHeight: 170.percent,
        ),
        [
          .text(
            'Three simple steps to save money on your groceries',
          ),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.how-it-works').styles(
      display: .flex,
      flexDirection: .column,
      alignItems: .center,
    ),
  ];
}
