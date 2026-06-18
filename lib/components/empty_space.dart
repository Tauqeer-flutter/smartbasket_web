import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class EmptySpace extends StatelessComponent {
  final double? width;
  final double? height;

  const EmptySpace({super.key, this.width, this.height});

  @override
  Component build(BuildContext context) {
    return hr(
      styles: Styles(
        width: width?.px,
        height: height?.px,
        border: Border.none,
      ),
    );
  }
}
