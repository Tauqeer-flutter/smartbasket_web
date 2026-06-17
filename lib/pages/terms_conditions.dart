import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TermsPage extends StatelessComponent {
  const TermsPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'terms-page', [
      // ── Hero Banner ─────────────────────────────────────────────
      div(classes: 'terms-banner', [
        span(classes: 'banner-title', [text('Terms & Conditions')]),
      ]),

      // ── Page Body ────────────────────────────────────────────────
      div(classes: 'terms-body', [

        // Top intro block
        div(classes: 'section-block', [
          _buildHeading('Terms & Conditions', 'heading-xl'),
          _buildParagraph(),
        ]),

        // All sub-sections
        div(classes: 'sections-wrapper', [
          div(classes: 'sections-inner', [
            _buildSection('User Agreement'),
            _buildSection('Eligibility and Accounts'),
            _buildSection('Services and Conduct'),
            _buildSection('Fees and Payments'),
            _buildSection('Eligibility and Accounts'),
          ]),
        ]),

      ]),
    ]);
  }

  Component _buildSection(String title) {
    return div(classes: 'section-block', [
      _buildHeading(title, 'heading-lg'),
      _buildParagraph(),
    ]);
  }

  Component _buildHeading(String label, String cls) {
    return span(classes: cls, [text(label)]);
  }

  Component _buildParagraph() {
    return p(classes: 'body-text', [
      text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
            'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure '
            'dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt '
            'mollit anim id est laborum.',
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.terms-page').styles(
      display: Display.flex,
      width: 100.percent,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.center,
    ),

    // ── Banner ────────────────────────────────────────────────────
    css('.terms-banner').styles(
      display: Display.flex,
      width: 100.percent,
      height: 281.px,
      maxWidth: 1440.px,
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      backgroundColor:Color('#EBF1FC'),
    ),

    css('.banner-title').styles(
      color:  Color("#0A2147"),
      fontFamily: FontFamily('Helvetica Neue, Helvetica, Arial, sans-serif'),
      fontSize: 64.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.px,
    ),

    // ── Body wrapper ──────────────────────────────────────────────
    css('.terms-body').styles(
      display: Display.flex,
      width: 1000.px,
      maxWidth: 100.percent,
      padding: .symmetric(vertical: 60.px, horizontal: 0.px),
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

    css('.sections-inner').styles(
      display: Display.flex,
      width: 100.percent,
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.start,
      gap: Gap.all(34.px),
    ),

    // ── Typography ────────────────────────────────────────────────
    css('.heading-xl').styles(
      display: Display.block,
      width: 100.percent,
      color:  Color("#0A2147"),
      fontFamily: FontFamily('Helvetica Neue, Helvetica, Arial, sans-serif'),
      fontSize: 64.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.px,
    ),

    css('.heading-lg').styles(
      display: Display.block,
      width: 100.percent,
      color:  Color("#0A2147"),
      fontFamily: FontFamily('Helvetica Neue, Helvetica, Arial, sans-serif'),
      fontSize: 48.px,
      fontWeight: FontWeight.w400,
      lineHeight: 1.24.px,
    ),

    css('.body-text').styles(
      width: 100.percent,
      color:  Color("#717680"),
      fontFamily: FontFamily('Instrument Sans, sans-serif'),
      fontSize: 16.px,
      fontWeight: FontWeight.w500,
      lineHeight: 1.70.px,
      height: 150.px,
    ),
  ];
}
// class TermsConditions extends StatelessComponent {
//   const TermsConditions({super.key});
//
//   @override
//   Component build(BuildContext context) {
//     return section([
//       div(
//         styles: Styles(
//           display: Display.flex,
//           width: 1440.px,
//           height: 281.px,
//           flexDirection: FlexDirection.column,
//           justifyContent: JustifyContent.center,
//           alignItems: AlignItems.center,
//           color: Color('#0A2147'),
//           fontFamily: FontFamily.list([
//             FontFamily('Helvetica Neue'),
//             FontFamilies.sansSerif,
//           ]),
//           fontSize: 64.px,
//           fontWeight: FontWeight.w400,
//           lineHeight: 1.24.em,
//           backgroundColor: Color('#EBF1FC'),
//         ),
//         [
//           Component.text('Terms & Conditions'),
//         ],
//       ),
//         // div(
//         //   styles: Styles(
//         //                 display: Display.flex,
//         //                 width: 100.percent,
//         //                 flexDirection: FlexDirection.column,
//         //                 alignItems: AlignItems.start,
//         //                 gap: Gap.all(34.px),
//         //               ),
//         //               [
//         //                 _buildSection('User Agreement'),
//         //                 _buildSection('Eligibility and Accounts'),
//         //                 _buildSection('Services and Conduct'),
//         //                 _buildSection('Fees and Payments'),
//         //                 _buildSection('Eligibility and Accounts'),
//         //               ],
//         //             ),
//       _buildHeading('Terms & Conditions', 64),
//                   _buildBody(
//                     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
//       _buildHeading('Eligibility and Accounts', 48),
//       _buildBody(
//           'By accessing or using this application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please discontinue use of the application.'
//       ),
//       // _buildHeading('Services and Conduct', 48),
//       // _buildBody(
//       //     'By accessing or using this application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please discontinue use of the application.'
//       // ),
//
//       // _buildHeading('Fees and Payments', 48),
//       // _buildBody(
//       //     'By accessing or using this application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please discontinue use of the application.'
//       // ),
//       // _buildHeading('Eligibility and Accounts', 48),
//       // _buildBody(
//       //     'By accessing or using this application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please discontinue use of the application.'
//       // ),
//       h3([.text('📖 Documentation')]),
//
//       // div(
//       //   styles: Styles(
//       //     display: Display.flex,
//       //     width: 100.percent,
//       //     flexDirection: FlexDirection.column,
//       //     alignItems: AlignItems.start,
//       //   ),
//       //
//       //   [
//       //     // ── Hero Banner ──────────────────────────
//       //     div(
//       //       styles: Styles(
//       //         display: Display.flex,
//       //         width: 1440.px,
//       //         height: 281.px,
//       //         flexDirection: FlexDirection.column,
//       //         justifyContent: JustifyContent.center,
//       //         alignItems: AlignItems.center,
//       //         color: Color('#0A2147'),
//       //         fontFamily: FontFamily.list([
//       //           FontFamily('Helvetica Neue'),
//       //           FontFamilies.sansSerif,
//       //         ]),
//       //         fontSize: 64.px,
//       //         fontWeight: FontWeight.w400,
//       //         lineHeight: 1.24.em,
//       //         backgroundColor: Color('#EBF1FC'),
//       //       ),
//       //       [
//       //         Component.text('Terms & Conditions'),
//       //       ],
//       //     ),
//       //
//       //     // ── Page Body ────────────────────────────────────────────
//       //     div(
//       //       styles: Styles(
//       //         display: Display.flex,
//       //         width: 1000.px,
//       //         maxWidth: 100.percent,
//       //         padding: Padding.symmetric(
//       //           vertical: 60.px,
//       //           horizontal: 0.px,
//       //         ),
//       //         flexDirection: FlexDirection.column,
//       //         alignItems: AlignItems.start,
//       //         gap: Gap.all(85.px),
//       //       ),
//       //       [
//       //         // Top: Title + Intro paragraph
//       //         div(
//       //           styles: Styles(
//       //             display: Display.flex,
//       //             width: 100.percent,
//       //             flexDirection: FlexDirection.column,
//       //             alignItems: AlignItems.start,
//       //             gap: Gap.all(30.px),
//       //           ),
//       //           [
//       //             _buildHeading('Terms & Conditions', 64),
//       //             _buildBody(
//       //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
//       //             ),
//       //           ],
//       //         ),
//       //
//       //         // Sections block
//       //         div(
//       //           styles: Styles(
//       //             display: Display.flex,
//       //             width: 100.percent,
//       //             flexDirection: FlexDirection.column,
//       //             alignItems: AlignItems.start,
//       //             gap: Gap.all(67.px),
//       //           ),
//       //           [
//       //             div(
//       //               styles: Styles(
//       //                 display: Display.flex,
//       //                 width: 100.percent,
//       //                 flexDirection: FlexDirection.column,
//       //                 alignItems: AlignItems.start,
//       //                 gap: Gap.all(34.px),
//       //               ),
//       //               [
//       //                 _buildSection('User Agreement'),
//       //                 _buildSection('Eligibility and Accounts'),
//       //                 _buildSection('Services and Conduct'),
//       //                 _buildSection('Fees and Payments'),
//       //                 _buildSection('Eligibility and Accounts'),
//       //               ],
//       //             ),
//       //           ],
//       //         ),
//       //       ],
//       //     ),
//       //   ],
//       // ),
//     ]);
//   }
//
//   // ── Reusable: Section heading (48px) + body paragraph ─────────
//   Component _buildSection(String title) {
//     return div(
//       styles: Styles(
//         //display: Display.flex,
//         width: 100.percent,
//         flexDirection: FlexDirection.column,
//         alignItems: AlignItems.center,
//         gap: Gap.all(30.px),
//       ),
//       [
//         _buildHeading(title, 48),
//         _buildBody(
//           'By accessing or using this application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, please discontinue use of the application.'
//         ),
//       ],
//     );
//   }
//
//   // ── Reusable: Heading text ─────────────────────────────────────
//   Component _buildHeading(String label, double size) {
//     return div(
//       styles: Styles(
//         width: 100.percent,
//         color: Color('#0A2147'),
//         fontFamily: FontFamily.list([
//           FontFamily('Helvetica Neue'),
//           FontFamilies.sansSerif,
//         ]),
//         fontSize: size.px,
//         fontWeight: FontWeight.w400,
//         lineHeight: 1.24.em,
//       ),
//       [Component.text(label)],
//     );
//   }
//
//   // ── Reusable: Body paragraph ───────────────────────────────────
//   Component _buildBody(String content) {
//     return div(
//       styles: Styles(
//         width: 100.percent,
//         color: Color('#717680'),
//         fontFamily: FontFamily.list([
//           FontFamily('Instrument Sans'),
//           FontFamilies.sansSerif,
//         ]),
//         fontSize: 16.px,
//         fontWeight: FontWeight.w500,
//         lineHeight: 1.70.em,
//       ),
//       [Component.text(content)],
//     );
//   }
// }
