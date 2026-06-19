import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/constants/assets.dart';

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
          color: AppColors.darkBlue,
          fontSize: 52.px,
          fontWeight: .w400,
          lineHeight: 124.percent,
        ),
        [.text('How It Works')],
      ),
      EmptySpace(height: 14),
      h1(
        styles: Styles(
          color: AppColors.textGray,
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
      EmptySpace(height: 44),
      div(
        classes: 'how-it-works-grid',
        [
          img(src: PngAssets.howItWorksMobile, width: 580),
          div(classes: 'how-it-works-column', [
            _buildHowItWorksItem(
              image: SvgAssets.flower,
              title: 'Select Categories',
              description:
                  'Choose from fruits, vegetables, dairy, snacks, and more. Search for specific products or browse by category.',
            ),
            EmptySpace(height: 24),
            _buildHowItWorksItem(
              image: SvgAssets.blocks,
              title: 'AI Price Comparison',
              description:
                  'Our AI instantly compares prices across hundreds of stores in real-time to find you the best deals.',
            ),
            EmptySpace(height: 24),
            _buildHowItWorksItem(
              image: SvgAssets.finance,
              title: 'Find Nearest Store',
              description:
                  'Get AI-powered recommendations for the nearest stores with the best prices based on your location.',
            ),
          ]),
        ],
      ),
    ]);
  }

  Component _buildHowItWorksItem({required String image, required String title, required String description}) {
    return div(classes: 'how-it-works-item', [
      div(
        styles: Styles(
          display: .flex,
          flexDirection: .row,
          alignItems: .start,
        ),
        [
          img(src: image),
          EmptySpace(width: 32),
          div(
            styles: Styles(
              display: .flex,
              flexDirection: .column,
            ),
            [
              h1(
                styles: Styles(
                  color: AppColors.darkBlue,
                  fontSize: 32.px,
                  fontWeight: .w400,
                  lineHeight: 110.percent,
                ),
                [.text(title)],
              ),
              EmptySpace(height: 1),
              h1(
                styles: Styles(
                  color: AppColors.textGray,
                  fontSize: 18.px,
                  fontWeight: .w400,
                  lineHeight: 170.percent,
                ),
                [.text(description)],
              ),
            ],
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
    css('.how-it-works-grid').styles(
      display: .grid,
      width: 68.percent,
      gridTemplate: GridTemplate(
        columns: GridTracks(
          [
            GridTrack(TrackSize.fr(1)),
            GridTrack(TrackSize.fr(1)),
          ],
        ),
      ),
      gap: .all(20.px),
    ),
    css('.how-it-works-column').styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .start,
    ),
    css('.how-it-works-item').styles(
      display: .flex,
      padding: .all(30.px),
      border: .all(color: AppColors.primaryBlue.withOpacity(0.57)),
      radius: .circular(20.px),
      shadow: BoxShadow(offsetX: 4.px, offsetY: 4.px, color: AppColors.lightBlue1),
      flexDirection: .column,
      alignItems: .start,
      alignSelf: .stretch,
    ),
  ];
}
