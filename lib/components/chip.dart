import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/app_colors.dart';

class Chip extends StatelessComponent {
  final String label;
  final String? image;
  final bool filled;
  final Color? fillColor;

  const Chip({
    super.key,
    required this.label,
    this.image,
    this.filled = false,
    this.fillColor,
  });
  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        maxWidth: .fitContent,
        padding: .symmetric(vertical: 8.px, horizontal: 16.px),
        border: .all(width: 1.px, color: AppColors.lightBlue1),
        radius: .circular(100.px),
        backgroundColor: filled ? fillColor ?? AppColors.primaryBlue.withOpacity(0.1) : null,
      ),
      [
        if (image != null)
          img(
            src: image!,
            styles: Styles(
              padding: .only(right: 6.px),
            ),
            width: 16,
            height: 16,
          ),
            .text(
          label,
        ),
      ],
    );
  }
}
