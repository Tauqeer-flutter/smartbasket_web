import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_material/jaspr_material.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';
import 'chip.dart';
import 'empty_space.dart';

class Footer extends StatelessComponent {
  bool shouldShowPricing(BuildContext context) {
    final location = context.binding.currentUrl;
    if (location.contains('/terms-conditions') || location.contains('/privacy-policy')) {
      return false;
    }
    return true;
  }

  @override
  Component build(BuildContext context) {
    final showPricing = shouldShowPricing(context);
    return div(classes: 'footer', [
      _buildBody(showPricing),
    ]);
  }

  div _buildBody(bool showPricing) {
    return div(
      id: 'pricing',
      classes: 'footer-body',
      [
        if (showPricing) ...{
          EmptySpace(height: 80),
          Chip(label: 'Premium Subscription', textColor: AppColors.white),
          EmptySpace(height: 14),
          h1(
            classes: 'footer-subtitle',
            [
              .text(
                'Transparent data that shows you exactly where the margins are. No more guessing which shop is cheaper for your specific list.',
              ),
            ],
          ),
          EmptySpace(height: 44),
          div(
            classes: 'footer-subscription',
            [
              h1(
                classes: 'subscription-name',
                [.text('EcoBasket')],
              ),
              EmptySpace(height: 4),
              div(
                classes: 'footer-price',
                [
                  h1(
                    classes: 'price-value',
                    [.text('£4.99')],
                  ),
                  h1(
                    classes: 'price-unit',
                    [.text('/ per month')],
                  ),
                  h1(
                    classes: 'trial-text',
                    [.text('7 Days Free Trial')],
                  ),
                ],
              ),
              EmptySpace(height: 4),
              h1(
                classes: 'subscription-desc',
                [.text('Unlock the full power of AI-driven savings with our monthly plan.')],
              ),
              EmptySpace(height: 32),
              div(
                classes: 'footer-subscription-features',
                [
                  _buildSubscriptionFeature('Unlimited basket comparisons'),
                  _buildSubscriptionFeature('Priority regional data'),
                  _buildSubscriptionFeature('Real-time stock alerts'),
                  _buildSubscriptionFeature('Exclusive partner deals'),
                  _buildSubscriptionFeature('Ad-free experience'),
                  _buildSubscriptionFeature('Find nearest stores with best prices'),
                ],
              ),
              EmptySpace(height: 32),
              button(
                classes: 'subscription-btn',
                [
                  .text('Start Your Subscription Now'),
                  Icon(
                    Icons.arrowRightAlt,
                    color: AppColors.white,
                  ),
                ],
              ),
            ],
          ),
          EmptySpace(height: 50),
          div(
            classes: 'divider-container',
            [
              hr(
                classes: 'footer-divider',
              ),
            ],
          ),
        },
        footer(
          classes: 'footer-navigation',
          [
            a(href: '/', [
              img(
                src: SvgAssets.logoWhite,
                height: 40,
              ),
            ]),
            div(
              classes: 'navigation-buttons',
              [
                a(href: '/', [
                  .text('About'),
                ]),
                a(href: '/#howItWorks', [
                  .text('How It Works'),
                ]),
                a(href: '/#pricing', [
                  .text('Pricing'),
                ]),
                a(href: '/terms-conditions', [
                  .text('Terms & Conditions'),
                ]),
                a(href: '/privacy-policy', [
                  .text('Privacy Policy'),
                ]),
              ],
            ),
            div(
              classes: 'navigation-buttons',
              [
                img(
                  src: SvgAssets.playStore,
                  width: 32,
                  height: 32,
                  styles: Styles(
                    margin: .symmetric(horizontal: 14.px),
                  ),
                ),
                img(
                  src: SvgAssets.appStore,
                  width: 32,
                  height: 32,
                  styles: Styles(
                    margin: .symmetric(horizontal: 14.px),
                  ),
                ),
                img(
                  src: SvgAssets.twitter,
                  width: 32,
                  height: 32,
                  styles: Styles(
                    margin: .symmetric(horizontal: 14.px),
                  ),
                ),
                img(
                  src: SvgAssets.linkedin,
                  width: 32,
                  height: 32,
                  styles: Styles(
                    margin: .symmetric(horizontal: 14.px),
                  ),
                ),
                img(
                  src: SvgAssets.facebook,
                  width: 32,
                  height: 32,
                  styles: Styles(
                    margin: .symmetric(horizontal: 14.px),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildSubscriptionFeature(String title) {
    return div(classes: 'subscription-feature', [
      Icon(Icons.checkCircle, color: AppColors.orange),
      h1(
        classes: 'feature-text',
        [.text(title)],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.footer').styles(
      display: .flex,
      width: 100.percent,
      margin: .only(top: 50.px),
      flexDirection: .column,
      alignItems: .center,
      backgroundColor: AppColors.primaryBlue,
    ),
    css('.footer-body').styles(
      display: .flex,
      width: 100.percent,
      margin: .only(left: 100.px, right: 100.px),
      flexDirection: .column,
      alignItems: .center,
    ),
    css('.footer-subscription').styles(
      display: .flex,
      width: 58.percent,
      padding: .all(48.px),
      border: .all(color: AppColors.white.withOpacity(0.2)),
      radius: .circular(24.px),
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .start,
      backgroundColor: AppColors.white.withOpacity(0.1),
    ),
    css('.footer-price').styles(
      display: .flex,
      width: 100.percent,
      flexDirection: .row,
      justifyContent: .center,
      alignItems: .center,
    ),
    css('.footer-subscription-features').styles(
      display: .grid,
      width: 100.percent,
      gridTemplate: GridTemplate(
        columns: GridTracks([
          GridTrack(TrackSize.fr(1)),
          GridTrack(TrackSize.fr(1)),
        ]),
      ),
      gap: .all(16.px),
    ),
    css('.subscription-feature').styles(
      display: .flex,
      width: 100.percent,
      flexDirection: .row,
      gap: .column(12.px),
    ),
    css('.footer-navigation').styles(
      display: .flex,
      width: 100.percent,
      padding: .only(left: 100.px, right: 100.px, bottom: 50.px, top: 50.px),
      boxSizing: .borderBox,
      flexDirection: .row,
      alignItems: .center,
      alignContent: .center,
      gap: .row(28.px),
    ),
    css('.navigation-buttons').styles(
      margin: .only(
        left: .auto,
      ),
    ),
    css('a').styles(
      margin: .only(right: 28.px),
      color: AppColors.white,
      fontSize: 16.px,
      fontWeight: .w500,
      fontStyle: .normal,
      textDecoration: .none,
    ),
    css('.footer-subtitle').styles(
      width: 70.percent,
      color: AppColors.white.withOpacity(0.7),
      textAlign: .center,
      fontSize: 18.px,
      fontWeight: .w400,
      lineHeight: 170.percent,
    ),
    css('.subscription-name').styles(
      color: AppColors.white,
      fontSize: 18.px,
      fontWeight: .w500,
      lineHeight: 150.percent,
    ),
    css('.price-value').styles(
      color: AppColors.white,
      fontSize: 36.px,
      fontWeight: .w700,
    ),
    css('.price-unit').styles(
      margin: .only(left: 5.px),
      color: AppColors.white,
      fontSize: 18.px,
      fontWeight: .w400,
    ),
    css('.trial-text').styles(
      margin: .only(left: .auto),
      color: AppColors.white,
      fontSize: 25.px,
      fontWeight: .w700,
    ),
    css('.subscription-desc').styles(
      color: AppColors.textGray1,
      fontSize: 18.px,
      fontWeight: .w400,
    ),
    css('.feature-text').styles(
      color: AppColors.white,
      fontSize: 16.px,
      fontWeight: .w400,
    ),
    css('.divider-container').styles(
      width: 100.percent,
    ),
    css('.footer-divider').styles(
      margin: .symmetric(horizontal: 100.px),
    ),
    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.footer-body').styles(
        margin: .only(left: 20.px, right: 20.px, top: 40.px),
      ),
      css('.footer-subtitle').styles(
        width: 100.percent,
      ),
      css('.footer-subscription').styles(
        width: 100.percent,
        padding: .all(24.px),
        boxSizing: .borderBox,
      ),
      css('.footer-price').styles(
        flexDirection: .column,
        gap: Gap.all(10.px),
      ),
      css('.trial-text').styles(
        margin: .zero,
        textAlign: .center,
      ),
      css('.footer-subscription-features').styles(
        gridTemplate: GridTemplate(
          columns: GridTracks([GridTrack(TrackSize.fr(1))]),
        ),
      ),
      css('.footer-navigation').styles(
        flexDirection: .column,
        padding: .symmetric(horizontal: 20.px, vertical: 40.px),
        gap: .row(20.px),
      ),
      css('.navigation-buttons').styles(
        margin: .zero,
        display: .flex,
        flexWrap: .wrap,
        justifyContent: .center,
        gap: .all(10.px),
      ),
      css('.navigation-buttons a').styles(
        margin: .zero,
      ),
      css('.footer-divider').styles(
        margin: .symmetric(horizontal: 20.px, vertical: 20.px),
      ),
    ]),
  ];
}
