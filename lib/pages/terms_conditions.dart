import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TermsConditions extends StatelessComponent {
  const TermsConditions({super.key});

  @override
  Component build(BuildContext context) {
    return section([
      div(
        styles: Styles(
          display: Display.flex,
          width: 100.percent,
          flexDirection: FlexDirection.column,
          alignItems: AlignItems.center,
        ),
        [
          // ── Hero Banner ──────────────────────────
          div(
            styles: Styles(
              display: Display.flex,
              width: 1440.px,
              height: 281.px,
              flexDirection: FlexDirection.column,
              justifyContent: JustifyContent.center,
              alignItems: AlignItems.center,
              color: Color('#0A2147'),
              fontFamily: FontFamily.list([
                FontFamily('Helvetica Neue'),
                FontFamilies.sansSerif,
              ]),
              fontSize: 64.px,
              fontWeight: FontWeight.w400,
              lineHeight: 1.24.em,
              backgroundColor: Color('#EBF1FC'),
            ),
            [
              Component.text('Terms & Conditions'),
            ],
          ),

          // ── Page Body ────────────────────────────────────────────
          div(
            styles: Styles(
              display: Display.flex,
              width: 1000.px,
              maxWidth: 100.percent,
              padding: Padding.symmetric(
                vertical: 60.px,
                horizontal: 0.px,
              ),
              flexDirection: FlexDirection.column,
              alignItems: AlignItems.start,
              gap: Gap.all(85.px),
            ),
            [
              // Top: Title + Intro paragraph
              div(
                styles: Styles(
                  display: Display.flex,
                  width: 100.percent,
                  flexDirection: FlexDirection.column,
                  alignItems: AlignItems.start,
                  gap: Gap.all(30.px),
                ),
                [
                  _buildHeading('Terms & Conditions', 64),
                  _buildBody(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                ],
              ),

              // Sections block
              div(
                styles: Styles(
                  display: Display.flex,
                  width: 100.percent,
                  flexDirection: FlexDirection.column,
                  alignItems: AlignItems.start,
                  gap: Gap.all(67.px),
                ),
                [
                  // All sections grouped
                  div(
                    styles: Styles(
                      display: Display.flex,
                      width: 100.percent,
                      flexDirection: FlexDirection.column,
                      alignItems: AlignItems.start,
                      gap: Gap.all(34.px),
                    ),
                    [
                      _buildSection('User Agreement'),
                      _buildSection('Eligibility and Accounts'),
                      _buildSection('Services and Conduct'),
                      _buildSection('Fees and Payments'),
                      _buildSection('Eligibility and Accounts'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  // ── Reusable: Section heading (48px) + body paragraph ─────────
  Component _buildSection(String title) {
    return div(
      styles: Styles(
        display: Display.flex,
        width: 100.percent,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.start,
        gap: Gap.all(30.px),
      ),
      [
        _buildHeading(title, 48),
        _buildBody(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
      ],
    );
  }

  // ── Reusable: Heading text ─────────────────────────────────────
  Component _buildHeading(String label, double size) {
    return div(
      styles: Styles(
        width: 100.percent,
        color: Color('#0A2147'),
        fontFamily: FontFamily.list([
          FontFamily('Helvetica Neue'),
          FontFamilies.sansSerif,
        ]),
        fontSize: size.px,
        fontWeight: FontWeight.w400,
        lineHeight: 1.24.em,
      ),
      [Component.text(label)],
    );
  }

  // ── Reusable: Body paragraph ───────────────────────────────────
  Component _buildBody(String content) {
    return div(
      styles: Styles(
        width: 100.percent,
        color: Color('#717680'),
        fontFamily: FontFamily.list([
          FontFamily('Instrument Sans'),
          FontFamilies.sansSerif,
        ]),
        fontSize: 16.px,
        fontWeight: FontWeight.w500,
        lineHeight: 1.70.em,
      ),
      [Component.text(content)],
    );
  }
}
