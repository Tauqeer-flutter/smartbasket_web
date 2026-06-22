import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/app_colors.dart';

class TermsConditions extends StatelessComponent {
  const TermsConditions({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'terms-container', [
      // ── Hero Banner ─────────────────────────────────────────────
      div(classes: 'terms-banner', [
        Component.text('Terms & Conditions'),
      ]),

      // ── Page Body ────────────────────────────────────────────────
      div(classes: 'terms-content', [
        // Top intro block
        div(classes: 'section-block', [
          _buildHeading('Terms & Conditions', 'heading-xl'),
          _buildParagraph(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
            'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure '
            'dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt '
            'mollit anim id est laborum.',
          ),
        ]),

        // All sub-sections
        div(classes: 'sections-wrapper', [
          _buildSection('User Agreement'),
          _buildSection('Eligibility and Accounts'),
          _buildSection('Services and Conduct'),
          _buildSection('Fees and Payments'),
          _buildSection('Privacy Policy'),
        ]),
      ]),
    ]);
  }

  Component _buildSection(String title) {
    return div(classes: 'section-block', [
      _buildHeading(title, 'heading-lg'),
      _buildParagraph(
        'By accessing or using this application, you agree to be bound by these Terms and Conditions. '
        'If you do not agree with any part of these terms, please discontinue use of the application.',
      ),
    ]);
  }

  Component _buildHeading(String label, String cls) {
    return div(classes: cls, [Component.text(label)]);
  }

  Component _buildParagraph(String content) {
    return p(classes: 'body-text', [Component.text(content)]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.terms-container').styles(
      display: Display.flex,
      width: 100.percent,
      boxSizing: BoxSizing.borderBox,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.center,
    ),

    // ── Banner ────────────────────────────────────────────────────
    css('.terms-banner').styles(
      display: Display.flex,
      width: 100.percent,
      height: 281.px,
      // maxWidth: 1440.px,
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      color: AppColors.darkBlue,
      // fontFamily: FontFamily.list([
      //   FontFamily('Helvetica Neue'),
      //   FontFamilies.sansSerif,
      // ]),
      fontSize: 64.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.em,
      backgroundColor: AppColors.accentBlue,
    ),

    // ── Body wrapper ──────────────────────────────────────────────
    css('.terms-content').styles(
      display: Display.flex,
      width: 100.percent,
      maxWidth: 1440.px,
      padding: Padding.symmetric(vertical: 60.px, horizontal: 120.px),
      boxSizing: BoxSizing.borderBox,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.start,
      gap: Gap.all(85.px),
    ),

    // ── Section block (title + paragraph) ────────────────────────
    css('.section-block').styles(
      display: Display.flex,
      width: 100.percent,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.start,
      gap: Gap.all(30.px),
    ),

    // ── Sections wrapper ──────────────────────────────────────────
    css('.sections-wrapper').styles(
      display: Display.flex,
      width: 100.percent,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.start,
      gap: Gap.all(67.px),
    ),

    // ── Typography ────────────────────────────────────────────────
    css('.heading-xl').styles(
      color: AppColors.darkBlue,
      fontSize: 64.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.em,
    ),

    css('.heading-lg').styles(
      color: AppColors.darkBlue,
      fontSize: 48.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.em,
    ),

    css('.body-text').styles(
      margin: Margin.zero,
      // fontFamily: FontFamily.list([
      //   FontFamily('Instrument Sans'),
      //   FontFamilies.sansSerif,
      // ]),
      color: AppColors.textGray,
      fontSize: 16.px,
      fontWeight: FontWeight.w500,
      lineHeight: 1.70.em,
    ),

    css.media(MediaQuery.screen(maxWidth: 768.px), [
      css('.terms-content').styles(
        padding: Padding.symmetric(horizontal: 20.px, vertical: 30.px),
        gap: Gap.all(40.px),
      ),
      css('.terms-banner').styles(
        height: 200.px,
      ),
      css('.heading-xl').styles(
        fontSize: 32.px,
      ),
      css('.heading-lg').styles(
        fontSize: 24.px,
      ),
    ]),
  ];
}
