import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:smartbasket_web/components/empty_space.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';

class FeatureGrid extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(classes: 'parent', [
      div(
        classes: 'data-grid',
        [
          _buildCardItem(
            image: PngAssets.liveAvailability,
            title: 'Real-time shelf availability tracking',
            description: 'Know exactly which store has your products in stock before visiting.',
          ),
          _buildCardItem(
            image: PngAssets.categoryBasedSearch,
            title: 'Category-Based Search',
            description: 'Browse products by category for faster and easier shopping.',
          ),
          _buildCardItem(
            image: PngAssets.smartRecommendations,
            title: 'Smart Recommendations',
            description:
                'Advanced algorithms analyze prices, quality, and availability across all stores in real-time.',
          ),
          _buildCardItem(
            image: PngAssets.nearestStores,
            title: 'Find Nearest Store',
            description:
                'Get AI-powered recommendations for the nearest stores with the best prices based on your location.',
          ),
        ],
      ),
    ]);
  }

  div _buildCardItem({required String image, required String title, required String description}) {
    return div(classes: 'card', [
      div(classes: 'inner-card', [
        img(
          src: image,
          classes: 'card-img',
        ),
      ]),
      EmptySpace(height: 20),
      h1(
        classes: 'card-title',
        [.text(title)],
      ),
      // EmptySpace(height: 8),
      h2(classes: 'card-description', [.text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.parent').styles(
      display: .flex,
      width: 100.percent,
      justifyContent: .center,
    ),
    css('.data-grid').styles(
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
    css('.card').styles(
      display: .flex,
      padding: .all(12.px),
      border: .all(color: AppColors.borderGrey),
      radius: .circular(16.px),
      flexDirection: .column,
      alignItems: .center,
    ),
    css('.inner-card').styles(
      display: .flex,
      padding: .symmetric(horizontal: 56.px, vertical: 36.px),
      radius: .circular(12.px),
      justifyContent: .center,
      alignItems: .center,
      alignSelf: .stretch,
      backgroundColor: AppColors.accentBlue,
    ),
    css('.card-img').styles(
      height: 260.px,
    ),
    css('.card-title').styles(
      color: AppColors.darkBlue,
      fontSize: 24.px,
      fontWeight: .w400,
      lineHeight: 100.percent,
      textAlign: .center,
    ),
    css('.card-description').styles(
      color: AppColors.textGray,
      textAlign: .center,
      fontSize: 18.px,
      fontWeight: .w400,
      lineHeight: 140.percent,
    ),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.data-grid').styles(
        width: 90.percent,
        gridTemplate: GridTemplate(
          columns: GridTracks([GridTrack(TrackSize.fr(1))]),
        ),
      ),
      css('.inner-card').styles(
        padding: .symmetric(horizontal: 20.px, vertical: 20.px),
      ),
      css('.card-title').styles(
        fontSize: 20.px,
      ),
      css('.card-description').styles(
        fontSize: 16.px,
      ),
      css('.card-img').styles(
        height: .auto,
        maxWidth: 100.percent,
      ),
    ]),
  ];
}
