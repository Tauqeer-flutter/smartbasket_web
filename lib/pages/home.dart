import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(classes: 'body', []);
  }

  static List<StyleRule> get styles => [
    css('.body').styles(
      width: 100.percent,
      margin: 120.px,
    ),
  ];
}
