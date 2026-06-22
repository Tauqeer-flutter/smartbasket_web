import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/app_colors.dart';

class StatsRow extends StatelessComponent {
  const StatsRow({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'stats-items',
      [
        _buildStatItem(name: 'Stores Connected', value: '5+'),
        _buildStatItem(name: 'Products Tracked', value: '50K+'),
        _buildStatItem(name: 'Avg. Savings', value: '35%'),
      ],
    );
  }

  div _buildStatItem({required String name, required String value}) {
    return div(
      classes: 'stats-item',
      [
        div(
          classes: 'stats-value',
          [
            .text(value),
          ],
        ),
        div(
          classes: 'stats-name',
          [
            .text(name),
          ],
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.stats-items').styles(
      display: .flex,
      width: 550.px,
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),
    css('.stats-item').styles(
      display: .flex,
      width: 160.px,
      flexDirection: .column,
      alignItems: .center,
      gap: Gap.all(9.px),
    ),
    css('.stats-value').styles(
      color: AppColors.darkBlue,
      fontSize: 34.px,
      fontWeight: FontWeight.w500,
    ),
    css('.stats-name').styles(
      color: AppColors.textGray,
      fontSize: 18.px,
      fontWeight: .w400,
    ),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.stats-items').styles(
        width: 100.percent,
        flexWrap: .wrap,
        justifyContent: .center,
        gap: Gap.all(20.px),
      ),
      css('.stats-item').styles(
        width: .auto,
        minWidth: 100.px,
      ),
      css('.stats-value').styles(
        fontSize: 24.px,
      ),
      css('.stats-name').styles(
        fontSize: 14.px,
      ),
    ]),
  ];
}
